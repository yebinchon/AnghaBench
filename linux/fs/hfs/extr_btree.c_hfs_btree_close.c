
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hfs_btree {int inode; int node_hash_cnt; struct hfs_bnode** node_hash; } ;
struct hfs_bnode {int refcnt; int this; TYPE_1__* tree; struct hfs_bnode* next_hash; } ;
struct TYPE_2__ {int cnid; } ;


 int NODE_HASH_SIZE ;
 scalar_t__ atomic_read (int *) ;
 int hfs_bnode_free (struct hfs_bnode*) ;
 int iput (int ) ;
 int kfree (struct hfs_btree*) ;
 int pr_err (char*,int ,int ,scalar_t__) ;

void hfs_btree_close(struct hfs_btree *tree)
{
 struct hfs_bnode *node;
 int i;

 if (!tree)
  return;

 for (i = 0; i < NODE_HASH_SIZE; i++) {
  while ((node = tree->node_hash[i])) {
   tree->node_hash[i] = node->next_hash;
   if (atomic_read(&node->refcnt))
    pr_err("node %d:%d still has %d user(s)!\n",
           node->tree->cnid, node->this,
           atomic_read(&node->refcnt));
   hfs_bnode_free(node);
   tree->node_hash_cnt--;
  }
 }
 iput(tree->inode);
 kfree(tree);
}
