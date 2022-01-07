
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel8x0m {int device_type; int pcm_devs; TYPE_1__* ichd; } ;
struct ich_pcm_table {size_t ac97_idx; } ;
struct TYPE_2__ {int ac97; } ;


 int ARRAY_SIZE (struct ich_pcm_table*) ;


 struct ich_pcm_table* ali_pcms ;
 struct ich_pcm_table* intel_pcms ;
 struct ich_pcm_table* nforce_pcms ;
 int snd_intel8x0m_pcm1 (struct intel8x0m*,int,struct ich_pcm_table*) ;

__attribute__((used)) static int snd_intel8x0m_pcm(struct intel8x0m *chip)
{
 int i, tblsize, device, err;
 struct ich_pcm_table *tbl, *rec;


 tbl = intel_pcms;
 tblsize = 1;
 device = 0;
 for (i = 0; i < tblsize; i++) {
  rec = tbl + i;
  if (i > 0 && rec->ac97_idx) {

   if (! chip->ichd[rec->ac97_idx].ac97)
    continue;
  }
  err = snd_intel8x0m_pcm1(chip, device, rec);
  if (err < 0)
   return err;
  device++;
 }

 chip->pcm_devs = device;
 return 0;
}
