
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_ac97 {int num; struct intel8x0m* private_data; } ;
struct intel8x0m {TYPE_1__* card; int in_ac97_init; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int ,char*,int,unsigned short) ;
 int iaputword (struct intel8x0m*,unsigned short,unsigned short) ;
 scalar_t__ snd_intel8x0m_codec_semaphore (struct intel8x0m*,int) ;

__attribute__((used)) static void snd_intel8x0m_codec_write(struct snd_ac97 *ac97,
          unsigned short reg,
          unsigned short val)
{
 struct intel8x0m *chip = ac97->private_data;

 if (snd_intel8x0m_codec_semaphore(chip, ac97->num) < 0) {
  if (! chip->in_ac97_init)
   dev_err(chip->card->dev,
    "codec_write %d: semaphore is not ready for register 0x%x\n",
    ac97->num, reg);
 }
 iaputword(chip, reg + ac97->num * 0x80, val);
}
