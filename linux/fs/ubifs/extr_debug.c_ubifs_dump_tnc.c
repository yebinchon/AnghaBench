
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ubifs_znode {int level; } ;
struct TYPE_3__ {int znode; } ;
struct ubifs_info {TYPE_1__ zroot; } ;
struct TYPE_4__ {int pid; } ;


 TYPE_2__* current ;
 int pr_err (char*,...) ;
 int ubifs_dump_znode (struct ubifs_info*,struct ubifs_znode*) ;
 struct ubifs_znode* ubifs_tnc_levelorder_next (struct ubifs_info*,int ,struct ubifs_znode*) ;

void ubifs_dump_tnc(struct ubifs_info *c)
{
 struct ubifs_znode *znode;
 int level;

 pr_err("\n");
 pr_err("(pid %d) start dumping TNC tree\n", current->pid);
 znode = ubifs_tnc_levelorder_next(c, c->zroot.znode, ((void*)0));
 level = znode->level;
 pr_err("== Level %d ==\n", level);
 while (znode) {
  if (level != znode->level) {
   level = znode->level;
   pr_err("== Level %d ==\n", level);
  }
  ubifs_dump_znode(c, znode);
  znode = ubifs_tnc_levelorder_next(c, c->zroot.znode, znode);
 }
 pr_err("(pid %d) finish dumping TNC tree\n", current->pid);
}
