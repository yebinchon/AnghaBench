
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_pnode {int dummy; } ;
struct ubifs_nnode {struct ubifs_nbranch* nbranch; } ;
struct ubifs_nbranch {struct ubifs_pnode* pnode; } ;
struct ubifs_info {int dummy; } ;


 struct ubifs_pnode* ERR_PTR (int) ;
 int read_pnode (struct ubifs_info*,struct ubifs_nnode*,int) ;
 int update_cats (struct ubifs_info*,struct ubifs_pnode*) ;

struct ubifs_pnode *ubifs_get_pnode(struct ubifs_info *c,
        struct ubifs_nnode *parent, int iip)
{
 struct ubifs_nbranch *branch;
 struct ubifs_pnode *pnode;
 int err;

 branch = &parent->nbranch[iip];
 pnode = branch->pnode;
 if (pnode)
  return pnode;
 err = read_pnode(c, parent, iip);
 if (err)
  return ERR_PTR(err);
 update_cats(c, branch->pnode);
 return branch->pnode;
}
