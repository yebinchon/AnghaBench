
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct hfs_btree {scalar_t__ node_count; struct hfs_bnode** node_hash; } ;
struct hfs_bnode {scalar_t__ this; struct hfs_bnode* next_hash; } ;


 size_t hfs_bnode_hash (scalar_t__) ;
 int pr_err (char*,scalar_t__) ;

struct hfs_bnode *hfs_bnode_findhash(struct hfs_btree *tree, u32 cnid)
{
 struct hfs_bnode *node;

 if (cnid >= tree->node_count) {
  pr_err("request for non-existent node %d in B*Tree\n",
         cnid);
  return ((void*)0);
 }

 for (node = tree->node_hash[hfs_bnode_hash(cnid)];
   node; node = node->next_hash)
  if (node->this == cnid)
   return node;
 return ((void*)0);
}
