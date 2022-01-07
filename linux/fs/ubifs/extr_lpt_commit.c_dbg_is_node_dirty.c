
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int dummy; } ;






 int dbg_is_lsave_dirty (struct ubifs_info*,int,int) ;
 int dbg_is_ltab_dirty (struct ubifs_info*,int,int) ;
 int dbg_is_nnode_dirty (struct ubifs_info*,int,int) ;
 int dbg_is_pnode_dirty (struct ubifs_info*,int,int) ;

__attribute__((used)) static int dbg_is_node_dirty(struct ubifs_info *c, int node_type, int lnum,
        int offs)
{
 switch (node_type) {
 case 129:
  return dbg_is_nnode_dirty(c, lnum, offs);
 case 128:
  return dbg_is_pnode_dirty(c, lnum, offs);
 case 130:
  return dbg_is_ltab_dirty(c, lnum, offs);
 case 131:
  return dbg_is_lsave_dirty(c, lnum, offs);
 }
 return 1;
}
