
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubifs_info {int dirty_nn_cnt; int dirty_pn_cnt; struct ubifs_cnode* lpt_cnext; TYPE_1__* nroot; } ;
struct ubifs_cnode {struct ubifs_cnode* cnext; int flags; } ;
struct TYPE_2__ {int flags; } ;


 int COW_CNODE ;
 int DIRTY_CNODE ;
 int __set_bit (int ,int *) ;
 int dbg_cmt (char*,int) ;
 int dbg_lp (char*,int) ;
 struct ubifs_cnode* first_dirty_cnode (struct ubifs_info*,TYPE_1__*) ;
 struct ubifs_cnode* next_dirty_cnode (struct ubifs_info*,struct ubifs_cnode*) ;
 int test_bit (int ,int *) ;
 int ubifs_assert (struct ubifs_info*,int) ;

__attribute__((used)) static int get_cnodes_to_commit(struct ubifs_info *c)
{
 struct ubifs_cnode *cnode, *cnext;
 int cnt = 0;

 if (!c->nroot)
  return 0;

 if (!test_bit(DIRTY_CNODE, &c->nroot->flags))
  return 0;

 c->lpt_cnext = first_dirty_cnode(c, c->nroot);
 cnode = c->lpt_cnext;
 if (!cnode)
  return 0;
 cnt += 1;
 while (1) {
  ubifs_assert(c, !test_bit(COW_CNODE, &cnode->flags));
  __set_bit(COW_CNODE, &cnode->flags);
  cnext = next_dirty_cnode(c, cnode);
  if (!cnext) {
   cnode->cnext = c->lpt_cnext;
   break;
  }
  cnode->cnext = cnext;
  cnode = cnext;
  cnt += 1;
 }
 dbg_cmt("committing %d cnodes", cnt);
 dbg_lp("committing %d cnodes", cnt);
 ubifs_assert(c, cnt == c->dirty_nn_cnt + c->dirty_pn_cnt);
 return cnt;
}
