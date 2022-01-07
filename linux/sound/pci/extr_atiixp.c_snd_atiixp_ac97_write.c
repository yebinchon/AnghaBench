
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int num; struct atiixp* private_data; } ;
struct atiixp {int dummy; } ;


 int snd_atiixp_codec_write (struct atiixp*,int ,unsigned short,unsigned short) ;

__attribute__((used)) static void snd_atiixp_ac97_write(struct snd_ac97 *ac97, unsigned short reg,
      unsigned short val)
{
 struct atiixp *chip = ac97->private_data;
 snd_atiixp_codec_write(chip, ac97->num, reg, val);
}
