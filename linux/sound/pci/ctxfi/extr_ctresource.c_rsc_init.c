
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct rsc {int type; int * ctrl_blk; int * ops; struct hw* hw; void* msr; void* conj; void* idx; } ;
struct hw {int (* src_rsc_get_ctrl_blk ) (int **) ;int (* amixer_rsc_get_ctrl_blk ) (int **) ;TYPE_1__* card; } ;
typedef enum RSCTYP { ____Placeholder_RSCTYP } RSCTYP ;
struct TYPE_2__ {int dev; } ;




 int EINVAL ;



 int dev_err (int ,char*,...) ;
 int rsc_generic_ops ;
 int stub1 (int **) ;
 int stub2 (int **) ;

int
rsc_init(struct rsc *rsc, u32 idx, enum RSCTYP type, u32 msr, struct hw *hw)
{
 int err = 0;

 rsc->idx = idx;
 rsc->conj = idx;
 rsc->type = type;
 rsc->msr = msr;
 rsc->hw = hw;
 rsc->ops = &rsc_generic_ops;
 if (!hw) {
  rsc->ctrl_blk = ((void*)0);
  return 0;
 }

 switch (type) {
 case 130:
  err = hw->src_rsc_get_ctrl_blk(&rsc->ctrl_blk);
  break;
 case 132:
  err = hw->amixer_rsc_get_ctrl_blk(&rsc->ctrl_blk);
  break;
 case 129:
 case 128:
 case 131:
  break;
 default:
  dev_err(((struct hw *)hw)->card->dev,
   "Invalid resource type value %d!\n", type);
  return -EINVAL;
 }

 if (err) {
  dev_err(((struct hw *)hw)->card->dev,
   "Failed to get resource control block!\n");
  return err;
 }

 return 0;
}
