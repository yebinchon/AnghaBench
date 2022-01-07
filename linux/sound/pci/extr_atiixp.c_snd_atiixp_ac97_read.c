
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int num; struct atiixp* private_data; } ;
struct atiixp {int dummy; } ;


 unsigned short snd_atiixp_codec_read (struct atiixp*,int ,unsigned short) ;

__attribute__((used)) static unsigned short snd_atiixp_ac97_read(struct snd_ac97 *ac97,
        unsigned short reg)
{
 struct atiixp *chip = ac97->private_data;
 return snd_atiixp_codec_read(chip, ac97->num, reg);

}
