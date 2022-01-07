
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int private_value; } ;
struct snd_ac97 {int scaps; } ;


 int AC97_POWERDOWN ;
 int AC97_SCAP_INV_EAPD ;
 int AC97_SINGLE_VALUE (int ,int,int,int ) ;
 int snd_ac97_update_bits (struct snd_ac97*,int ,int,int) ;

__attribute__((used)) static void set_inv_eapd(struct snd_ac97 *ac97, struct snd_kcontrol *kctl)
{
 kctl->private_value = AC97_SINGLE_VALUE(AC97_POWERDOWN, 15, 1, 0);
 snd_ac97_update_bits(ac97, AC97_POWERDOWN, (1<<15), (1<<15));
 ac97->scaps |= AC97_SCAP_INV_EAPD;
}
