
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_pnode {int dummy; } ;
struct ubifs_info {int lpt_first; int lpt_last; scalar_t__ nroot; int main_lebs; } ;
struct ubifs_cnode {int dummy; } ;


 int DIV_ROUND_UP (int ,int ) ;
 scalar_t__ IS_ERR (struct ubifs_pnode*) ;
 int PTR_ERR (struct ubifs_pnode*) ;
 int UBIFS_LPT_FANOUT ;
 int cond_resched () ;
 int dbg_check_lpt_nodes (struct ubifs_info*,struct ubifs_cnode*,int ,int ) ;
 int dbg_check_ltab_lnum (struct ubifs_info*,int) ;
 int dbg_is_chk_lprops (struct ubifs_info*) ;
 int dbg_lp (char*) ;
 int ubifs_err (struct ubifs_info*,char*,int) ;
 struct ubifs_pnode* ubifs_pnode_lookup (struct ubifs_info*,int) ;

int dbg_check_ltab(struct ubifs_info *c)
{
 int lnum, err, i, cnt;

 if (!dbg_is_chk_lprops(c))
  return 0;


 cnt = DIV_ROUND_UP(c->main_lebs, UBIFS_LPT_FANOUT);
 for (i = 0; i < cnt; i++) {
  struct ubifs_pnode *pnode;

  pnode = ubifs_pnode_lookup(c, i);
  if (IS_ERR(pnode))
   return PTR_ERR(pnode);
  cond_resched();
 }


 err = dbg_check_lpt_nodes(c, (struct ubifs_cnode *)c->nroot, 0, 0);
 if (err)
  return err;


 for (lnum = c->lpt_first; lnum <= c->lpt_last; lnum++) {
  err = dbg_check_ltab_lnum(c, lnum);
  if (err) {
   ubifs_err(c, "failed at LEB %d", lnum);
   return err;
  }
 }

 dbg_lp("succeeded");
 return 0;
}
