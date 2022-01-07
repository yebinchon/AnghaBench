
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_m3 {int dummy; } ;
struct snd_ac97 {int id; struct snd_m3* private_data; } ;


 unsigned short AC97_MASTER ;
 int CODEC_COMMAND ;
 int CODEC_DATA ;
 scalar_t__ snd_m3_ac97_wait (struct snd_m3*) ;
 int snd_m3_outb (struct snd_m3*,unsigned short,int ) ;
 int snd_m3_outw (struct snd_m3*,unsigned short,int ) ;

__attribute__((used)) static void
snd_m3_ac97_write(struct snd_ac97 *ac97, unsigned short reg, unsigned short val)
{
 struct snd_m3 *chip = ac97->private_data;

 if (snd_m3_ac97_wait(chip))
  return;
 snd_m3_outw(chip, val, CODEC_DATA);
 snd_m3_outb(chip, reg & 0x7f, CODEC_COMMAND);





 if (ac97->id == 0x45838308 && reg == AC97_MASTER) {
  snd_m3_ac97_wait(chip);
  snd_m3_outw(chip, val, CODEC_DATA);
  snd_m3_outb(chip, reg & 0x7f, CODEC_COMMAND);
 }
}
