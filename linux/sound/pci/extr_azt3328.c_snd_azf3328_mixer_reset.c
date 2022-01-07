
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_azf3328 {int dummy; } ;


 int IDX_MIXER_RESET ;
 int snd_azf3328_mixer_mute_control_master (struct snd_azf3328 const*,int) ;
 int snd_azf3328_mixer_outw (struct snd_azf3328 const*,int ,int) ;

__attribute__((used)) static inline void
snd_azf3328_mixer_reset(const struct snd_azf3328 *chip)
{



 snd_azf3328_mixer_mute_control_master(chip, 1);
 snd_azf3328_mixer_outw(chip, IDX_MIXER_RESET, 0x0000);
}
