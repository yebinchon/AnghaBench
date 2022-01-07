
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct snd_ac97 {struct nm256* private_data; } ;
struct nm256 {unsigned short* ac97_regs; TYPE_1__* card; scalar_t__ mixer_base; } ;
struct TYPE_2__ {int dev; } ;


 int dev_dbg (int ,char*) ;
 int msleep (int) ;
 int nm256_ac97_idx (unsigned short) ;
 scalar_t__ snd_nm256_ac97_ready (struct nm256*) ;
 int snd_nm256_writew (struct nm256*,scalar_t__,unsigned short) ;

__attribute__((used)) static void
snd_nm256_ac97_write(struct snd_ac97 *ac97,
       unsigned short reg, unsigned short val)
{
 struct nm256 *chip = ac97->private_data;
 int tries = 2;
 int idx = nm256_ac97_idx(reg);
 u32 base;

 if (idx < 0)
  return;

 base = chip->mixer_base;

 snd_nm256_ac97_ready(chip);


 while (tries-- > 0) {
  snd_nm256_writew(chip, base + reg, val);
  msleep(1);
  if (snd_nm256_ac97_ready(chip)) {

   chip->ac97_regs[idx] = val;
   return;
  }
 }
 dev_dbg(chip->card->dev, "nm256: ac97 codec not ready..\n");
}
