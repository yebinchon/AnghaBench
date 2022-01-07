
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct page {int dummy; } ;
struct hfs_btree {scalar_t__ node_count; int pages_per_bnode; int node_size_shift; TYPE_1__* inode; int hash_lock; int node_hash_cnt; struct hfs_bnode** node_hash; int cnid; } ;
struct hfs_bnode {int page_offset; int flags; struct page** page; int lock_wq; struct hfs_bnode* next_hash; scalar_t__ this; struct hfs_btree* tree; int refcnt; } ;
struct address_space {int dummy; } ;
typedef int loff_t ;
struct TYPE_2__ {struct address_space* i_mapping; } ;


 int BNODE_REFS ;
 int GFP_KERNEL ;
 int HFS_BNODE_ERROR ;
 int HFS_BNODE_NEW ;
 scalar_t__ IS_ERR (struct page*) ;
 int PAGE_MASK ;
 int PAGE_SHIFT ;
 scalar_t__ PageError (struct page*) ;
 int atomic_set (int *,int) ;
 struct hfs_bnode* hfs_bnode_findhash (struct hfs_btree*,scalar_t__) ;
 int hfs_bnode_hash (scalar_t__) ;
 int hfs_dbg (int ,char*,int ,scalar_t__) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct hfs_bnode*) ;
 struct hfs_bnode* kzalloc (int,int ) ;
 int pr_err (char*,scalar_t__) ;
 int put_page (struct page*) ;
 struct page* read_mapping_page (struct address_space*,int,int *) ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_bit (int ,int *) ;
 int wait_event (int ,int) ;

__attribute__((used)) static struct hfs_bnode *__hfs_bnode_create(struct hfs_btree *tree, u32 cnid)
{
 struct hfs_bnode *node, *node2;
 struct address_space *mapping;
 struct page *page;
 int size, block, i, hash;
 loff_t off;

 if (cnid >= tree->node_count) {
  pr_err("request for non-existent node %d in B*Tree\n",
         cnid);
  return ((void*)0);
 }

 size = sizeof(struct hfs_bnode) + tree->pages_per_bnode *
  sizeof(struct page *);
 node = kzalloc(size, GFP_KERNEL);
 if (!node)
  return ((void*)0);
 node->tree = tree;
 node->this = cnid;
 set_bit(HFS_BNODE_NEW, &node->flags);
 atomic_set(&node->refcnt, 1);
 hfs_dbg(BNODE_REFS, "new_node(%d:%d): 1\n",
  node->tree->cnid, node->this);
 init_waitqueue_head(&node->lock_wq);
 spin_lock(&tree->hash_lock);
 node2 = hfs_bnode_findhash(tree, cnid);
 if (!node2) {
  hash = hfs_bnode_hash(cnid);
  node->next_hash = tree->node_hash[hash];
  tree->node_hash[hash] = node;
  tree->node_hash_cnt++;
 } else {
  spin_unlock(&tree->hash_lock);
  kfree(node);
  wait_event(node2->lock_wq,
   !test_bit(HFS_BNODE_NEW, &node2->flags));
  return node2;
 }
 spin_unlock(&tree->hash_lock);

 mapping = tree->inode->i_mapping;
 off = (loff_t)cnid << tree->node_size_shift;
 block = off >> PAGE_SHIFT;
 node->page_offset = off & ~PAGE_MASK;
 for (i = 0; i < tree->pages_per_bnode; block++, i++) {
  page = read_mapping_page(mapping, block, ((void*)0));
  if (IS_ERR(page))
   goto fail;
  if (PageError(page)) {
   put_page(page);
   goto fail;
  }
  node->page[i] = page;
 }

 return node;
fail:
 set_bit(HFS_BNODE_ERROR, &node->flags);
 return node;
}
