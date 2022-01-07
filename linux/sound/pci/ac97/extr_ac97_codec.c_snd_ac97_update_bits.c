
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int reg_mutex; } ;


 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_ac97_update_bits_nolock (struct snd_ac97*,unsigned short,unsigned short,unsigned short) ;
 int snd_ac97_valid_reg (struct snd_ac97*,unsigned short) ;

int snd_ac97_update_bits(struct snd_ac97 *ac97, unsigned short reg, unsigned short mask, unsigned short value)
{
 int change;

 if (!snd_ac97_valid_reg(ac97, reg))
  return -EINVAL;
 mutex_lock(&ac97->reg_mutex);
 change = snd_ac97_update_bits_nolock(ac97, reg, mask, value);
 mutex_unlock(&ac97->reg_mutex);
 return change;
}
