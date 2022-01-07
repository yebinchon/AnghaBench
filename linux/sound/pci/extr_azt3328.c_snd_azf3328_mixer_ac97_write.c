
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_azf3328 {TYPE_1__* card; } ;
struct snd_ac97 {struct snd_azf3328* private_data; } ;
struct TYPE_2__ {int dev; } ;





 unsigned short AZF_AC97_REG_EMU_IO_WRITE ;
 unsigned short AZF_AC97_REG_REAL_IO_WRITE ;
 unsigned short AZF_AC97_REG_UNSUPPORTED ;
 unsigned short AZF_REG_MASK ;
 int dev_dbg (int ,char*,unsigned short,unsigned short) ;
 unsigned short snd_azf3328_mixer_ac97_map_reg_idx (unsigned short) ;
 int snd_azf3328_mixer_ac97_map_unsupported (struct snd_azf3328 const*,unsigned short,char*) ;
 int snd_azf3328_mixer_outw (struct snd_azf3328 const*,unsigned short,unsigned short) ;

__attribute__((used)) static void
snd_azf3328_mixer_ac97_write(struct snd_ac97 *ac97,
       unsigned short reg_ac97, unsigned short val)
{
 const struct snd_azf3328 *chip = ac97->private_data;
 unsigned short reg_azf = snd_azf3328_mixer_ac97_map_reg_idx(reg_ac97);
 bool unsupported = 0;

 dev_dbg(chip->card->dev,
  "snd_azf3328_mixer_ac97_write reg_ac97 %u val %u\n",
  reg_ac97, val);
 if (reg_azf & AZF_AC97_REG_UNSUPPORTED)
  unsupported = 1;
 else {
  if (reg_azf & AZF_AC97_REG_REAL_IO_WRITE)
   snd_azf3328_mixer_outw(
    chip,
    reg_azf & AZF_REG_MASK,
    val
   );
  else
  if (reg_azf & AZF_AC97_REG_EMU_IO_WRITE) {
   switch (reg_ac97) {
   case 128:
   case 129:
   case 130:
    break;
   default:
    unsupported = 1;
    break;
   }
  }
 }
 if (unsupported)
  snd_azf3328_mixer_ac97_map_unsupported(chip, reg_ac97, "write");
}
