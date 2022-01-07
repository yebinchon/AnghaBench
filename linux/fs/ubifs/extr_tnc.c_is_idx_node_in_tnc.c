
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ubifs_key {int dummy; } ubifs_key ;
struct ubifs_znode {int dummy; } ;
struct ubifs_info {int dummy; } ;


 scalar_t__ IS_ERR (struct ubifs_znode*) ;
 int PTR_ERR (struct ubifs_znode*) ;
 struct ubifs_znode* lookup_znode (struct ubifs_info*,union ubifs_key*,int,int,int) ;
 scalar_t__ ubifs_zn_dirty (struct ubifs_znode*) ;

int is_idx_node_in_tnc(struct ubifs_info *c, union ubifs_key *key, int level,
         int lnum, int offs)
{
 struct ubifs_znode *znode;

 znode = lookup_znode(c, key, level, lnum, offs);
 if (!znode)
  return 0;
 if (IS_ERR(znode))
  return PTR_ERR(znode);

 return ubifs_zn_dirty(znode) ? 1 : 2;
}
