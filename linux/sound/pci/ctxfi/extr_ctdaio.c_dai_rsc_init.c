
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct hw {int (* dai_get_ctrl_blk ) (int *) ;int (* dai_commit_write ) (struct hw*,int ,int ) ;int (* dai_srt_set_et ) (int ,int ) ;int (* dai_srt_set_ec ) (int ,int ) ;int (* dai_srt_set_drat ) (int ,int ) ;int (* dai_srt_set_rsr ) (int ,unsigned int) ;} ;
struct TYPE_4__ {struct hw* hw; } ;
struct daio_mgr {TYPE_1__ mgr; } ;
struct daio_desc {unsigned int msr; } ;
struct TYPE_5__ {int type; } ;
struct dai {TYPE_2__ daio; int ctrl_blk; struct hw* hw; int * ops; } ;


 int dai_ops ;
 int daio_device_index (int ,struct hw*) ;
 int daio_rsc_init (TYPE_2__*,struct daio_desc const*,struct hw*) ;
 int daio_rsc_uninit (TYPE_2__*) ;
 int stub1 (int *) ;
 int stub2 (int ,unsigned int) ;
 int stub3 (int ,int ) ;
 int stub4 (int ,int ) ;
 int stub5 (int ,int ) ;
 int stub6 (struct hw*,int ,int ) ;

__attribute__((used)) static int dai_rsc_init(struct dai *dai,
   const struct daio_desc *desc,
   struct daio_mgr *mgr)
{
 int err;
 struct hw *hw = mgr->mgr.hw;
 unsigned int rsr, msr;

 err = daio_rsc_init(&dai->daio, desc, mgr->mgr.hw);
 if (err)
  return err;

 dai->ops = &dai_ops;
 dai->hw = mgr->mgr.hw;
 err = hw->dai_get_ctrl_blk(&dai->ctrl_blk);
 if (err)
  goto error1;

 for (rsr = 0, msr = desc->msr; msr > 1; msr >>= 1)
  rsr++;

 hw->dai_srt_set_rsr(dai->ctrl_blk, rsr);
 hw->dai_srt_set_drat(dai->ctrl_blk, 0);

 hw->dai_srt_set_ec(dai->ctrl_blk, 0);
 hw->dai_srt_set_et(dai->ctrl_blk, 0);
 hw->dai_commit_write(hw,
  daio_device_index(dai->daio.type, dai->hw), dai->ctrl_blk);

 return 0;

error1:
 daio_rsc_uninit(&dai->daio);
 return err;
}
