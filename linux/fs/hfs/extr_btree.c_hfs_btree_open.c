
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u32 ;
struct super_block {int dummy; } ;
struct page {int dummy; } ;
struct hfs_mdb {int drCTClpSiz; int drCTFlSize; int drCTExtRec; int drXTClpSiz; int drXTFlSize; int drXTExtRec; } ;
struct hfs_btree_header_rec {int depth; int max_key_len; int node_size; int attributes; int free_nodes; int node_count; int leaf_tail; int leaf_head; int leaf_count; int root; } ;
struct hfs_btree {int cnid; unsigned int node_size; int pages_per_bnode; TYPE_1__* inode; scalar_t__ node_size_shift; void* max_key_len; void* node_count; void* depth; void* attributes; void* free_nodes; void* leaf_tail; void* leaf_head; void* leaf_count; void* root; int keycmp; struct super_block* sb; int hash_lock; int tree_lock; } ;
struct hfs_bnode_desc {int dummy; } ;
struct address_space {int * a_ops; } ;
typedef int btree_keycmp ;
struct TYPE_10__ {int first_blocks; int alloc_blocks; int extents_lock; scalar_t__ flags; } ;
struct TYPE_9__ {struct hfs_mdb* mdb; } ;
struct TYPE_8__ {int i_state; struct address_space* i_mapping; } ;


 int BUG () ;
 int BUG_ON (int) ;
 int GFP_KERNEL ;


 TYPE_6__* HFS_I (TYPE_1__*) ;
 void* HFS_MAX_CAT_KEYLEN ;
 void* HFS_MAX_EXT_KEYLEN ;
 TYPE_5__* HFS_SB (struct super_block*) ;
 scalar_t__ IS_ERR (struct page*) ;
 int I_NEW ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 void* be16_to_cpu (int ) ;
 void* be32_to_cpu (int ) ;
 scalar_t__ ffs (unsigned int) ;
 int hfs_aops ;
 int hfs_btree_aops ;
 int hfs_inode_read_fork (TYPE_1__*,int ,int ,int ,void*) ;
 TYPE_1__* iget_locked (struct super_block*,int) ;
 int iput (TYPE_1__*) ;
 int is_power_of_2 (unsigned int) ;
 int kfree (struct hfs_btree*) ;
 scalar_t__ kmap (struct page*) ;
 int kunmap (struct page*) ;
 struct hfs_btree* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int pr_err (char*,...) ;
 int put_page (struct page*) ;
 struct page* read_mapping_page (struct address_space*,int ,int *) ;
 int spin_lock_init (int *) ;
 int unlock_new_inode (TYPE_1__*) ;

struct hfs_btree *hfs_btree_open(struct super_block *sb, u32 id, btree_keycmp keycmp)
{
 struct hfs_btree *tree;
 struct hfs_btree_header_rec *head;
 struct address_space *mapping;
 struct page *page;
 unsigned int size;

 tree = kzalloc(sizeof(*tree), GFP_KERNEL);
 if (!tree)
  return ((void*)0);

 mutex_init(&tree->tree_lock);
 spin_lock_init(&tree->hash_lock);

 tree->sb = sb;
 tree->cnid = id;
 tree->keycmp = keycmp;

 tree->inode = iget_locked(sb, id);
 if (!tree->inode)
  goto free_tree;
 BUG_ON(!(tree->inode->i_state & I_NEW));
 {
 struct hfs_mdb *mdb = HFS_SB(sb)->mdb;
 HFS_I(tree->inode)->flags = 0;
 mutex_init(&HFS_I(tree->inode)->extents_lock);
 switch (id) {
 case 128:
  hfs_inode_read_fork(tree->inode, mdb->drXTExtRec, mdb->drXTFlSize,
        mdb->drXTFlSize, be32_to_cpu(mdb->drXTClpSiz));
  if (HFS_I(tree->inode)->alloc_blocks >
     HFS_I(tree->inode)->first_blocks) {
   pr_err("invalid btree extent records\n");
   unlock_new_inode(tree->inode);
   goto free_inode;
  }

  tree->inode->i_mapping->a_ops = &hfs_btree_aops;
  break;
 case 129:
  hfs_inode_read_fork(tree->inode, mdb->drCTExtRec, mdb->drCTFlSize,
        mdb->drCTFlSize, be32_to_cpu(mdb->drCTClpSiz));

  if (!HFS_I(tree->inode)->first_blocks) {
   pr_err("invalid btree extent records (0 size)\n");
   unlock_new_inode(tree->inode);
   goto free_inode;
  }

  tree->inode->i_mapping->a_ops = &hfs_btree_aops;
  break;
 default:
  BUG();
 }
 }
 unlock_new_inode(tree->inode);

 mapping = tree->inode->i_mapping;
 page = read_mapping_page(mapping, 0, ((void*)0));
 if (IS_ERR(page))
  goto free_inode;


 head = (struct hfs_btree_header_rec *)(kmap(page) + sizeof(struct hfs_bnode_desc));
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

 size = tree->node_size;
 if (!is_power_of_2(size))
  goto fail_page;
 if (!tree->node_count)
  goto fail_page;
 switch (id) {
 case 128:
  if (tree->max_key_len != HFS_MAX_EXT_KEYLEN) {
   pr_err("invalid extent max_key_len %d\n",
          tree->max_key_len);
   goto fail_page;
  }
  break;
 case 129:
  if (tree->max_key_len != HFS_MAX_CAT_KEYLEN) {
   pr_err("invalid catalog max_key_len %d\n",
          tree->max_key_len);
   goto fail_page;
  }
  break;
 default:
  BUG();
 }

 tree->node_size_shift = ffs(size) - 1;
 tree->pages_per_bnode = (tree->node_size + PAGE_SIZE - 1) >> PAGE_SHIFT;

 kunmap(page);
 put_page(page);
 return tree;

fail_page:
 put_page(page);
free_inode:
 tree->inode->i_mapping->a_ops = &hfs_aops;
 iput(tree->inode);
free_tree:
 kfree(tree);
 return ((void*)0);
}
