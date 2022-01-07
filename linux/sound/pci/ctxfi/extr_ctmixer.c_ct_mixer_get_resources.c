
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sum_mgr {int (* get_sum ) (struct sum_mgr*,struct sum_desc*,struct sum**) ;int (* put_sum ) (struct sum_mgr*,struct sum*) ;} ;
struct sum_desc {int msr; int member_0; } ;
struct sum {int dummy; } ;
struct ct_mixer {struct sum** sums; struct amixer** amixers; TYPE_2__* atc; } ;
struct amixer_mgr {int (* get_amixer ) (struct amixer_mgr*,struct amixer_desc*,struct amixer**) ;int (* put_amixer ) (struct amixer_mgr*,struct amixer*) ;} ;
struct amixer_desc {int msr; int member_0; } ;
struct amixer {int dummy; } ;
struct TYPE_4__ {TYPE_1__* card; int msr; scalar_t__* rsc_mgrs; } ;
struct TYPE_3__ {int dev; } ;


 size_t AMIXER ;
 int CHN_NUM ;
 int NUM_CT_AMIXERS ;
 int NUM_CT_SUMS ;
 size_t SUM ;
 int dev_err (int ,char*) ;
 int stub1 (struct sum_mgr*,struct sum_desc*,struct sum**) ;
 int stub2 (struct amixer_mgr*,struct amixer_desc*,struct amixer**) ;
 int stub3 (struct amixer_mgr*,struct amixer*) ;
 int stub4 (struct sum_mgr*,struct sum*) ;

__attribute__((used)) static int ct_mixer_get_resources(struct ct_mixer *mixer)
{
 struct sum_mgr *sum_mgr;
 struct sum *sum;
 struct sum_desc sum_desc = {0};
 struct amixer_mgr *amixer_mgr;
 struct amixer *amixer;
 struct amixer_desc am_desc = {0};
 int err;
 int i;


 sum_mgr = (struct sum_mgr *)mixer->atc->rsc_mgrs[SUM];
 sum_desc.msr = mixer->atc->msr;
 for (i = 0; i < (NUM_CT_SUMS * CHN_NUM); i++) {
  err = sum_mgr->get_sum(sum_mgr, &sum_desc, &sum);
  if (err) {
   dev_err(mixer->atc->card->dev,
    "Failed to get sum resources for front output!\n");
   break;
  }
  mixer->sums[i] = sum;
 }
 if (err)
  goto error1;


 amixer_mgr = (struct amixer_mgr *)mixer->atc->rsc_mgrs[AMIXER];
 am_desc.msr = mixer->atc->msr;
 for (i = 0; i < (NUM_CT_AMIXERS * CHN_NUM); i++) {
  err = amixer_mgr->get_amixer(amixer_mgr, &am_desc, &amixer);
  if (err) {
   dev_err(mixer->atc->card->dev,
    "Failed to get amixer resources for mixer obj!\n");
   break;
  }
  mixer->amixers[i] = amixer;
 }
 if (err)
  goto error2;

 return 0;

error2:
 for (i = 0; i < (NUM_CT_AMIXERS * CHN_NUM); i++) {
  if (((void*)0) != mixer->amixers[i]) {
   amixer = mixer->amixers[i];
   amixer_mgr->put_amixer(amixer_mgr, amixer);
   mixer->amixers[i] = ((void*)0);
  }
 }
error1:
 for (i = 0; i < (NUM_CT_SUMS * CHN_NUM); i++) {
  if (((void*)0) != mixer->sums[i]) {
   sum_mgr->put_sum(sum_mgr, (struct sum *)mixer->sums[i]);
   mixer->sums[i] = ((void*)0);
  }
 }

 return err;
}
