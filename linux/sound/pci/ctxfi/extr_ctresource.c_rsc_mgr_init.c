
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rsc_mgr {int type; unsigned int avail; unsigned int amount; int rscs; struct hw* hw; int ctrl_blk; } ;
struct hw {int (* src_mgr_get_ctrl_blk ) (int *) ;int (* srcimp_mgr_get_ctrl_blk ) (int *) ;int (* amixer_mgr_get_ctrl_blk ) (int *) ;int (* daio_mgr_get_ctrl_blk ) (struct hw*,int *) ;TYPE_1__* card; } ;
typedef enum RSCTYP { ____Placeholder_RSCTYP } RSCTYP ;
struct TYPE_2__ {int dev; } ;




 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NUM_RSCTYP ;



 int dev_err (int ,char*,...) ;
 int kfree (int ) ;
 int kzalloc (unsigned int,int ) ;
 int stub1 (int *) ;
 int stub2 (int *) ;
 int stub3 (int *) ;
 int stub4 (struct hw*,int *) ;

int rsc_mgr_init(struct rsc_mgr *mgr, enum RSCTYP type,
   unsigned int amount, struct hw *hw)
{
 int err = 0;

 mgr->type = NUM_RSCTYP;

 mgr->rscs = kzalloc(((amount + 8 - 1) / 8), GFP_KERNEL);
 if (!mgr->rscs)
  return -ENOMEM;

 switch (type) {
 case 130:
  err = hw->src_mgr_get_ctrl_blk(&mgr->ctrl_blk);
  break;
 case 129:
  err = hw->srcimp_mgr_get_ctrl_blk(&mgr->ctrl_blk);
  break;
 case 132:
  err = hw->amixer_mgr_get_ctrl_blk(&mgr->ctrl_blk);
  break;
 case 131:
  err = hw->daio_mgr_get_ctrl_blk(hw, &mgr->ctrl_blk);
  break;
 case 128:
  break;
 default:
  dev_err(hw->card->dev,
   "Invalid resource type value %d!\n", type);
  err = -EINVAL;
  goto error;
 }

 if (err) {
  dev_err(hw->card->dev,
   "Failed to get manager control block!\n");
  goto error;
 }

 mgr->type = type;
 mgr->avail = mgr->amount = amount;
 mgr->hw = hw;

 return 0;

error:
 kfree(mgr->rscs);
 return err;
}
