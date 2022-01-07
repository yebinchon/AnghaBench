
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct hfs_btree_header_rec {int depth; void* attributes; void* free_nodes; void* node_count; void* leaf_tail; void* leaf_head; void* leaf_count; void* root; } ;
struct hfs_btree {int depth; int attributes; int free_nodes; int node_count; int leaf_tail; int leaf_head; int leaf_count; int root; } ;
struct hfs_bnode_desc {int dummy; } ;
struct hfs_bnode {struct page** page; } ;


 int EIO ;
 scalar_t__ IS_ERR (struct hfs_bnode*) ;
 int cpu_to_be16 (int ) ;
 void* cpu_to_be32 (int ) ;
 struct hfs_bnode* hfs_bnode_find (struct hfs_btree*,int ) ;
 int hfs_bnode_put (struct hfs_bnode*) ;
 scalar_t__ kmap (struct page*) ;
 int kunmap (struct page*) ;
 int set_page_dirty (struct page*) ;

int hfs_btree_write(struct hfs_btree *tree)
{
 struct hfs_btree_header_rec *head;
 struct hfs_bnode *node;
 struct page *page;

 node = hfs_bnode_find(tree, 0);
 if (IS_ERR(node))

  return -EIO;

 page = node->page[0];
 head = (struct hfs_btree_header_rec *)(kmap(page) +
  sizeof(struct hfs_bnode_desc));

 head->root = cpu_to_be32(tree->root);
 head->leaf_count = cpu_to_be32(tree->leaf_count);
 head->leaf_head = cpu_to_be32(tree->leaf_head);
 head->leaf_tail = cpu_to_be32(tree->leaf_tail);
 head->node_count = cpu_to_be32(tree->node_count);
 head->free_nodes = cpu_to_be32(tree->free_nodes);
 head->attributes = cpu_to_be32(tree->attributes);
 head->depth = cpu_to_be16(tree->depth);

 kunmap(page);
 set_page_dirty(page);
 hfs_bnode_put(node);
 return 0;
}
