
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_pnode {struct ubifs_lprops* lprops; } ;
struct ubifs_lprops {int flags; int dirty; int free; } ;
struct ubifs_info {int main_first; } ;


 struct ubifs_lprops* ERR_CAST (struct ubifs_pnode*) ;
 scalar_t__ IS_ERR (struct ubifs_pnode*) ;
 int UBIFS_LPT_FANOUT ;
 int UBIFS_LPT_FANOUT_SHIFT ;
 int dbg_lp (char*,int,int ,int ,int ) ;
 struct ubifs_pnode* ubifs_pnode_lookup (struct ubifs_info*,int) ;

struct ubifs_lprops *ubifs_lpt_lookup(struct ubifs_info *c, int lnum)
{
 int i, iip;
 struct ubifs_pnode *pnode;

 i = lnum - c->main_first;
 pnode = ubifs_pnode_lookup(c, i >> UBIFS_LPT_FANOUT_SHIFT);
 if (IS_ERR(pnode))
  return ERR_CAST(pnode);
 iip = (i & (UBIFS_LPT_FANOUT - 1));
 dbg_lp("LEB %d, free %d, dirty %d, flags %d", lnum,
        pnode->lprops[iip].free, pnode->lprops[iip].dirty,
        pnode->lprops[iip].flags);
 return &pnode->lprops[iip];
}
