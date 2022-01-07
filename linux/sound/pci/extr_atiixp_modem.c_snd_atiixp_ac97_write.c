
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int num; struct atiixp_modem* private_data; } ;
struct atiixp_modem {int dummy; } ;


 unsigned short AC97_GPIO_STATUS ;
 unsigned short ATI_REG_MODEM_OUT_GPIO_DATA_SHIFT ;
 unsigned short ATI_REG_MODEM_OUT_GPIO_EN ;
 int MODEM_OUT_GPIO ;
 int atiixp_write (struct atiixp_modem*,int ,unsigned short) ;
 int snd_atiixp_codec_write (struct atiixp_modem*,int ,unsigned short,unsigned short) ;

__attribute__((used)) static void snd_atiixp_ac97_write(struct snd_ac97 *ac97, unsigned short reg,
      unsigned short val)
{
 struct atiixp_modem *chip = ac97->private_data;
 if (reg == AC97_GPIO_STATUS) {
  atiixp_write(chip, MODEM_OUT_GPIO,
   (val << ATI_REG_MODEM_OUT_GPIO_DATA_SHIFT) | ATI_REG_MODEM_OUT_GPIO_EN);
  return;
 }
 snd_atiixp_codec_write(chip, ac97->num, reg, val);
}
