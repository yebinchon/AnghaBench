
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_azf3328 {int dummy; } ;


 int IDX_MIXER_PLAY_MASTER ;
 int snd_azf3328_mixer_mute_control (struct snd_azf3328 const*,int ,int) ;

__attribute__((used)) static inline bool
snd_azf3328_mixer_mute_control_master(const struct snd_azf3328 *chip,
      bool do_mute
)
{
 return snd_azf3328_mixer_mute_control(
  chip,
  IDX_MIXER_PLAY_MASTER,
  do_mute
 );
}
