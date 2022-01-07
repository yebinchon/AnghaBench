
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_pnode {int dummy; } ;
struct ubifs_info {int dummy; } ;


 scalar_t__ IS_ERR (struct ubifs_pnode*) ;
 int PTR_ERR (struct ubifs_pnode*) ;
 int do_make_pnode_dirty (struct ubifs_info*,struct ubifs_pnode*) ;
 struct ubifs_pnode* next_pnode_to_dirty (struct ubifs_info*,struct ubifs_pnode*) ;
 struct ubifs_pnode* ubifs_pnode_lookup (struct ubifs_info*,int ) ;

__attribute__((used)) static int make_tree_dirty(struct ubifs_info *c)
{
 struct ubifs_pnode *pnode;

 pnode = ubifs_pnode_lookup(c, 0);
 if (IS_ERR(pnode))
  return PTR_ERR(pnode);

 while (pnode) {
  do_make_pnode_dirty(c, pnode);
  pnode = next_pnode_to_dirty(c, pnode);
  if (IS_ERR(pnode))
   return PTR_ERR(pnode);
 }
 return 0;
}
