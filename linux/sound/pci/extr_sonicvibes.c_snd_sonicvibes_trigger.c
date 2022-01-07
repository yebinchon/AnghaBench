
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sonicvibes {int enable; int reg_lock; } ;


 int EINVAL ;
 int SNDRV_PCM_TRIGGER_START ;
 int SNDRV_PCM_TRIGGER_STOP ;
 int SV_IREG_PC_ENABLE ;
 int snd_sonicvibes_out1 (struct sonicvibes*,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int snd_sonicvibes_trigger(struct sonicvibes * sonic, int what, int cmd)
{
 int result = 0;

 spin_lock(&sonic->reg_lock);
 if (cmd == SNDRV_PCM_TRIGGER_START) {
  if (!(sonic->enable & what)) {
   sonic->enable |= what;
   snd_sonicvibes_out1(sonic, SV_IREG_PC_ENABLE, sonic->enable);
  }
 } else if (cmd == SNDRV_PCM_TRIGGER_STOP) {
  if (sonic->enable & what) {
   sonic->enable &= ~what;
   snd_sonicvibes_out1(sonic, SV_IREG_PC_ENABLE, sonic->enable);
  }
 } else {
  result = -EINVAL;
 }
 spin_unlock(&sonic->reg_lock);
 return result;
}
