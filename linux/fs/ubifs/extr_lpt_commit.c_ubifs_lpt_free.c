
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ubifs_nnode {TYPE_1__* nbranch; } ;
struct TYPE_6__ {int * arr; } ;
struct ubifs_info {int * lpt_nod_buf; int * ltab; int * nroot; TYPE_3__ dirty_idx; TYPE_2__* lpt_heap; int * lsave; int * lpt_buf; int * ltab_cmt; } ;
struct TYPE_5__ {int * arr; } ;
struct TYPE_4__ {int * nnode; } ;


 int LPROPS_HEAP_CNT ;
 int UBIFS_LPT_FANOUT ;
 struct ubifs_nnode* first_nnode (struct ubifs_info*,int*) ;
 int free_obsolete_cnodes (struct ubifs_info*) ;
 int kfree (int *) ;
 struct ubifs_nnode* next_nnode (struct ubifs_info*,struct ubifs_nnode*,int*) ;
 int vfree (int *) ;

void ubifs_lpt_free(struct ubifs_info *c, int wr_only)
{
 struct ubifs_nnode *nnode;
 int i, hght;



 free_obsolete_cnodes(c);

 vfree(c->ltab_cmt);
 c->ltab_cmt = ((void*)0);
 vfree(c->lpt_buf);
 c->lpt_buf = ((void*)0);
 kfree(c->lsave);
 c->lsave = ((void*)0);

 if (wr_only)
  return;



 nnode = first_nnode(c, &hght);
 while (nnode) {
  for (i = 0; i < UBIFS_LPT_FANOUT; i++)
   kfree(nnode->nbranch[i].nnode);
  nnode = next_nnode(c, nnode, &hght);
 }
 for (i = 0; i < LPROPS_HEAP_CNT; i++)
  kfree(c->lpt_heap[i].arr);
 kfree(c->dirty_idx.arr);
 kfree(c->nroot);
 vfree(c->ltab);
 kfree(c->lpt_nod_buf);
}
