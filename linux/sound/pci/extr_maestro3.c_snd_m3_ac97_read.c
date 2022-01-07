
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_m3 {int dummy; } ;
struct snd_ac97 {struct snd_m3* private_data; } ;


 int CODEC_COMMAND ;
 int CODEC_DATA ;
 scalar_t__ snd_m3_ac97_wait (struct snd_m3*) ;
 unsigned short snd_m3_inw (struct snd_m3*,int ) ;
 int snd_m3_outb (struct snd_m3*,int,int ) ;

__attribute__((used)) static unsigned short
snd_m3_ac97_read(struct snd_ac97 *ac97, unsigned short reg)
{
 struct snd_m3 *chip = ac97->private_data;
 unsigned short data = 0xffff;

 if (snd_m3_ac97_wait(chip))
  goto fail;
 snd_m3_outb(chip, 0x80 | (reg & 0x7f), CODEC_COMMAND);
 if (snd_m3_ac97_wait(chip))
  goto fail;
 data = snd_m3_inw(chip, CODEC_DATA);
fail:
 return data;
}
