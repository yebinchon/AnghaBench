
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rsc {int type; scalar_t__ msr; scalar_t__ conj; scalar_t__ idx; int * ctrl_blk; TYPE_2__* hw; } ;
struct hw {TYPE_1__* card; } ;
struct TYPE_4__ {int (* amixer_rsc_put_ctrl_blk ) (int *) ;int (* src_rsc_put_ctrl_blk ) (int *) ;} ;
struct TYPE_3__ {int dev; } ;




 int NUM_RSCTYP ;


 int dev_err (int ,char*,int) ;
 int stub1 (int *) ;
 int stub2 (int *) ;

int rsc_uninit(struct rsc *rsc)
{
 if ((((void*)0) != rsc->hw) && (((void*)0) != rsc->ctrl_blk)) {
  switch (rsc->type) {
  case 129:
   rsc->hw->src_rsc_put_ctrl_blk(rsc->ctrl_blk);
   break;
  case 131:
   rsc->hw->amixer_rsc_put_ctrl_blk(rsc->ctrl_blk);
   break;
  case 128:
  case 130:
   break;
  default:
   dev_err(((struct hw *)rsc->hw)->card->dev,
    "Invalid resource type value %d!\n",
    rsc->type);
   break;
  }

  rsc->hw = rsc->ctrl_blk = ((void*)0);
 }

 rsc->idx = rsc->conj = 0;
 rsc->type = NUM_RSCTYP;
 rsc->msr = 0;

 return 0;
}
