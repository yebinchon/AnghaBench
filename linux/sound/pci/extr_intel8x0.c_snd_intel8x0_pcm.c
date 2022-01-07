
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel8x0 {int device_type; int pcm_devs; TYPE_1__* ichd; } ;
struct ich_pcm_table {size_t ac97_idx; } ;
struct TYPE_2__ {int pcm; } ;


 int ARRAY_SIZE (struct ich_pcm_table*) ;



 struct ich_pcm_table* ali_pcms ;
 struct ich_pcm_table* intel_pcms ;
 struct ich_pcm_table* nforce_pcms ;
 int snd_intel8x0_pcm1 (struct intel8x0*,int,struct ich_pcm_table*) ;
 int spdif_aclink ;

__attribute__((used)) static int snd_intel8x0_pcm(struct intel8x0 *chip)
{
 int i, tblsize, device, err;
 struct ich_pcm_table *tbl, *rec;

 switch (chip->device_type) {
 case 129:
  tbl = intel_pcms;
  tblsize = ARRAY_SIZE(intel_pcms);
  if (spdif_aclink)
   tblsize--;
  break;
 case 128:
  tbl = nforce_pcms;
  tblsize = ARRAY_SIZE(nforce_pcms);
  if (spdif_aclink)
   tblsize--;
  break;
 case 130:
  tbl = ali_pcms;
  tblsize = ARRAY_SIZE(ali_pcms);
  break;
 default:
  tbl = intel_pcms;
  tblsize = 2;
  break;
 }

 device = 0;
 for (i = 0; i < tblsize; i++) {
  rec = tbl + i;
  if (i > 0 && rec->ac97_idx) {

   if (! chip->ichd[rec->ac97_idx].pcm)
    continue;
  }
  err = snd_intel8x0_pcm1(chip, device, rec);
  if (err < 0)
   return err;
  device++;
 }

 chip->pcm_devs = device;
 return 0;
}
