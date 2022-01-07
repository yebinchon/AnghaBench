
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hfs_bnode {TYPE_1__* tree; struct hfs_bnode* next_hash; int this; int refcnt; } ;
struct TYPE_2__ {int node_hash_cnt; struct hfs_bnode** node_hash; int cnid; } ;


 int BNODE_REFS ;
 int BUG_ON (int) ;
 int atomic_read (int *) ;
 size_t hfs_bnode_hash (int ) ;
 int hfs_dbg (int ,char*,int ,int ,int ) ;

void hfs_bnode_unhash(struct hfs_bnode *node)
{
 struct hfs_bnode **p;

 hfs_dbg(BNODE_REFS, "remove_node(%d:%d): %d\n",
  node->tree->cnid, node->this, atomic_read(&node->refcnt));
 for (p = &node->tree->node_hash[hfs_bnode_hash(node->this)];
      *p && *p != node; p = &(*p)->next_hash)
  ;
 BUG_ON(!*p);
 *p = node->next_hash;
 node->tree->node_hash_cnt--;
}
