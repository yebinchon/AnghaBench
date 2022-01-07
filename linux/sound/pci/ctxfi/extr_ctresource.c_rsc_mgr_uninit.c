
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rsc_mgr {int type; scalar_t__ amount; scalar_t__ avail; int * ctrl_blk; TYPE_2__* hw; int * rscs; } ;
struct hw {TYPE_1__* card; } ;
struct TYPE_4__ {int (* daio_mgr_put_ctrl_blk ) (int *) ;int (* amixer_mgr_put_ctrl_blk ) (int *) ;int (* srcimp_mgr_put_ctrl_blk ) (int *) ;int (* src_mgr_put_ctrl_blk ) (int *) ;} ;
struct TYPE_3__ {int dev; } ;




 int NUM_RSCTYP ;



 int dev_err (int ,char*,int) ;
 int kfree (int *) ;
 int stub1 (int *) ;
 int stub2 (int *) ;
 int stub3 (int *) ;
 int stub4 (int *) ;

int rsc_mgr_uninit(struct rsc_mgr *mgr)
{
 kfree(mgr->rscs);
 mgr->rscs = ((void*)0);

 if ((((void*)0) != mgr->hw) && (((void*)0) != mgr->ctrl_blk)) {
  switch (mgr->type) {
  case 130:
   mgr->hw->src_mgr_put_ctrl_blk(mgr->ctrl_blk);
   break;
  case 129:
   mgr->hw->srcimp_mgr_put_ctrl_blk(mgr->ctrl_blk);
   break;
  case 132:
   mgr->hw->amixer_mgr_put_ctrl_blk(mgr->ctrl_blk);
   break;
  case 131:
   mgr->hw->daio_mgr_put_ctrl_blk(mgr->ctrl_blk);
   break;
  case 128:
   break;
  default:
   dev_err(((struct hw *)mgr->hw)->card->dev,
    "Invalid resource type value %d!\n",
    mgr->type);
   break;
  }

  mgr->hw = mgr->ctrl_blk = ((void*)0);
 }

 mgr->type = NUM_RSCTYP;
 mgr->avail = mgr->amount = 0;

 return 0;
}
