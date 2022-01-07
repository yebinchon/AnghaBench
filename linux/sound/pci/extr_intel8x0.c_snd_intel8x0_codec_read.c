
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_ac97 {int num; struct intel8x0* private_data; } ;
struct intel8x0 {unsigned int codec_ready_bits; TYPE_1__* card; int in_ac97_init; } ;
struct TYPE_2__ {int dev; } ;


 int GLOB_STA ;
 int ICHREG (int ) ;
 unsigned int ICH_GSCI ;
 unsigned int ICH_RCS ;
 int dev_err (int ,char*,int,unsigned short) ;
 unsigned short iagetword (struct intel8x0*,unsigned short) ;
 unsigned int igetdword (struct intel8x0*,int ) ;
 int iputdword (struct intel8x0*,int ,unsigned int) ;
 scalar_t__ snd_intel8x0_codec_semaphore (struct intel8x0*,int) ;

__attribute__((used)) static unsigned short snd_intel8x0_codec_read(struct snd_ac97 *ac97,
           unsigned short reg)
{
 struct intel8x0 *chip = ac97->private_data;
 unsigned short res;
 unsigned int tmp;

 if (snd_intel8x0_codec_semaphore(chip, ac97->num) < 0) {
  if (! chip->in_ac97_init)
   dev_err(chip->card->dev,
    "codec_read %d: semaphore is not ready for register 0x%x\n",
    ac97->num, reg);
  res = 0xffff;
 } else {
  res = iagetword(chip, reg + ac97->num * 0x80);
  if ((tmp = igetdword(chip, ICHREG(GLOB_STA))) & ICH_RCS) {

   iputdword(chip, ICHREG(GLOB_STA), tmp &
      ~(chip->codec_ready_bits | ICH_GSCI));
   if (! chip->in_ac97_init)
    dev_err(chip->card->dev,
     "codec_read %d: read timeout for register 0x%x\n",
     ac97->num, reg);
   res = 0xffff;
  }
 }
 return res;
}
