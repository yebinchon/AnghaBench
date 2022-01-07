
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int dummy; } ;


 int AC97_CM9738_VENDOR_CTRL ;
 scalar_t__ is_shared_surrout (struct snd_ac97*) ;
 int snd_ac97_update_bits (struct snd_ac97*,int ,int,int) ;

__attribute__((used)) static void cm9738_update_jacks(struct snd_ac97 *ac97)
{

 snd_ac97_update_bits(ac97, AC97_CM9738_VENDOR_CTRL, 1 << 10,
        is_shared_surrout(ac97) ? (1 << 10) : 0);
}
