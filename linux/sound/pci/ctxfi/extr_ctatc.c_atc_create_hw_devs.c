
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hw {int (* card_init ) (struct hw*,struct card_conf*) ;TYPE_1__* card; } ;
struct ct_atc {TYPE_1__* card; int * rsc_mgrs; struct hw* hw; int msr; int rsr; int model; int chip_type; int pci; } ;
struct card_conf {int vm_pgt_phys; int msr; int rsr; int member_0; } ;
struct TYPE_4__ {int (* create ) (struct hw*,int *) ;} ;
struct TYPE_3__ {int dev; } ;


 int NUM_RSCTYP ;
 int atc_get_ptp_phys (struct ct_atc*,int ) ;
 int create_hw_obj (int ,int ,int ,struct hw**) ;
 int dev_err (int ,char*,...) ;
 TYPE_2__* rsc_mgr_funcs ;
 int stub1 (struct hw*,struct card_conf*) ;
 int stub2 (struct hw*,int *) ;

__attribute__((used)) static int atc_create_hw_devs(struct ct_atc *atc)
{
 struct hw *hw;
 struct card_conf info = {0};
 int i, err;

 err = create_hw_obj(atc->pci, atc->chip_type, atc->model, &hw);
 if (err) {
  dev_err(atc->card->dev, "Failed to create hw obj!!!\n");
  return err;
 }
 hw->card = atc->card;
 atc->hw = hw;


 info.rsr = atc->rsr;
 info.msr = atc->msr;
 info.vm_pgt_phys = atc_get_ptp_phys(atc, 0);
 err = hw->card_init(hw, &info);
 if (err < 0)
  return err;

 for (i = 0; i < NUM_RSCTYP; i++) {
  if (!rsc_mgr_funcs[i].create)
   continue;

  err = rsc_mgr_funcs[i].create(atc->hw, &atc->rsc_mgrs[i]);
  if (err) {
   dev_err(atc->card->dev,
    "Failed to create rsc_mgr %d!!!\n", i);
   return err;
  }
 }

 return 0;
}
