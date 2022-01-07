
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct super_block {int dummy; } ;
struct page {struct address_space* i_mapping; } ;
struct inode {struct address_space* i_mapping; } ;
struct hfs_btree_header_rec {int key_type; int depth; int max_key_len; int node_size; int attributes; int free_nodes; int node_count; int leaf_tail; int leaf_head; int leaf_count; int root; } ;
struct hfs_btree {int cnid; int attributes; unsigned int node_size; int pages_per_bnode; struct page* inode; scalar_t__ node_size_shift; void* node_count; int keycmp; void* max_key_len; void* depth; void* free_nodes; void* leaf_tail; void* leaf_head; void* leaf_count; void* root; struct super_block* sb; int hash_lock; int tree_lock; } ;
struct hfs_bnode_desc {int dummy; } ;
struct address_space {int * a_ops; } ;
struct TYPE_4__ {int first_blocks; } ;
struct TYPE_3__ {int flags; } ;


 int GFP_KERNEL ;

 int HFSPLUS_ATTR_KEYLEN ;

 int HFSPLUS_CAT_KEYLEN ;

 int HFSPLUS_EXT_KEYLEN ;
 TYPE_2__* HFSPLUS_I (struct page*) ;
 int HFSPLUS_KEY_BINARY ;
 TYPE_1__* HFSPLUS_SB (struct super_block*) ;
 int HFSPLUS_SB_CASEFOLD ;
 int HFSPLUS_SB_HFSX ;
 int HFS_TREE_BIGKEYS ;
 int HFS_TREE_VARIDXKEYS ;
 scalar_t__ IS_ERR (struct page*) ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 void* be16_to_cpu (int ) ;
 void* be32_to_cpu (int ) ;
 scalar_t__ ffs (unsigned int) ;
 int hfsplus_aops ;
 int hfsplus_attr_bin_cmp_key ;
 int hfsplus_cat_bin_cmp_key ;
 int hfsplus_cat_case_cmp_key ;
 int hfsplus_ext_cmp_key ;
 struct page* hfsplus_iget (struct super_block*,int) ;
 int iput (struct page*) ;
 int is_power_of_2 (unsigned int) ;
 int kfree (struct hfs_btree*) ;
 scalar_t__ kmap (struct page*) ;
 int kunmap (struct page*) ;
 struct hfs_btree* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int pr_err (char*,...) ;
 int put_page (struct page*) ;
 struct page* read_mapping_page (struct address_space*,int ,int *) ;
 int set_bit (int ,int *) ;
 int spin_lock_init (int *) ;
 int test_bit (int ,int *) ;

struct hfs_btree *hfs_btree_open(struct super_block *sb, u32 id)
{
 struct hfs_btree *tree;
 struct hfs_btree_header_rec *head;
 struct address_space *mapping;
 struct inode *inode;
 struct page *page;
 unsigned int size;

 tree = kzalloc(sizeof(*tree), GFP_KERNEL);
 if (!tree)
  return ((void*)0);

 mutex_init(&tree->tree_lock);
 spin_lock_init(&tree->hash_lock);
 tree->sb = sb;
 tree->cnid = id;
 inode = hfsplus_iget(sb, id);
 if (IS_ERR(inode))
  goto free_tree;
 tree->inode = inode;

 if (!HFSPLUS_I(tree->inode)->first_blocks) {
  pr_err("invalid btree extent records (0 size)\n");
  goto free_inode;
 }

 mapping = tree->inode->i_mapping;
 page = read_mapping_page(mapping, 0, ((void*)0));
 if (IS_ERR(page))
  goto free_inode;


 head = (struct hfs_btree_header_rec *)(kmap(page) +
  sizeof(struct hfs_bnode_desc));
 tree->root = be32_to_cpu(head->root);
 tree->leaf_count = be32_to_cpu(head->leaf_count);
 tree->leaf_head = be32_to_cpu(head->leaf_head);
 tree->leaf_tail = be32_to_cpu(head->leaf_tail);
 tree->node_count = be32_to_cpu(head->node_count);
 tree->free_nodes = be32_to_cpu(head->free_nodes);
 tree->attributes = be32_to_cpu(head->attributes);
 tree->node_size = be16_to_cpu(head->node_size);
 tree->max_key_len = be16_to_cpu(head->max_key_len);
 tree->depth = be16_to_cpu(head->depth);


 switch (id) {
 case 128:
  if (tree->max_key_len != HFSPLUS_EXT_KEYLEN - sizeof(u16)) {
   pr_err("invalid extent max_key_len %d\n",
    tree->max_key_len);
   goto fail_page;
  }
  if (tree->attributes & HFS_TREE_VARIDXKEYS) {
   pr_err("invalid extent btree flag\n");
   goto fail_page;
  }

  tree->keycmp = hfsplus_ext_cmp_key;
  break;
 case 129:
  if (tree->max_key_len != HFSPLUS_CAT_KEYLEN - sizeof(u16)) {
   pr_err("invalid catalog max_key_len %d\n",
    tree->max_key_len);
   goto fail_page;
  }
  if (!(tree->attributes & HFS_TREE_VARIDXKEYS)) {
   pr_err("invalid catalog btree flag\n");
   goto fail_page;
  }

  if (test_bit(HFSPLUS_SB_HFSX, &HFSPLUS_SB(sb)->flags) &&
      (head->key_type == HFSPLUS_KEY_BINARY))
   tree->keycmp = hfsplus_cat_bin_cmp_key;
  else {
   tree->keycmp = hfsplus_cat_case_cmp_key;
   set_bit(HFSPLUS_SB_CASEFOLD, &HFSPLUS_SB(sb)->flags);
  }
  break;
 case 130:
  if (tree->max_key_len != HFSPLUS_ATTR_KEYLEN - sizeof(u16)) {
   pr_err("invalid attributes max_key_len %d\n",
    tree->max_key_len);
   goto fail_page;
  }
  tree->keycmp = hfsplus_attr_bin_cmp_key;
  break;
 default:
  pr_err("unknown B*Tree requested\n");
  goto fail_page;
 }

 if (!(tree->attributes & HFS_TREE_BIGKEYS)) {
  pr_err("invalid btree flag\n");
  goto fail_page;
 }

 size = tree->node_size;
 if (!is_power_of_2(size))
  goto fail_page;
 if (!tree->node_count)
  goto fail_page;

 tree->node_size_shift = ffs(size) - 1;

 tree->pages_per_bnode =
  (tree->node_size + PAGE_SIZE - 1) >>
  PAGE_SHIFT;

 kunmap(page);
 put_page(page);
 return tree;

 fail_page:
 put_page(page);
 free_inode:
 tree->inode->i_mapping->a_ops = &hfsplus_aops;
 iput(tree->inode);
 free_tree:
 kfree(tree);
 return ((void*)0);
}
