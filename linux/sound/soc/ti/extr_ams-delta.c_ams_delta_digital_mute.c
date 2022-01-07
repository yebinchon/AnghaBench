
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;


 int ams_delta_lock ;
 int ams_delta_muted ;
 int cx81801_cmd_pending ;
 int gpiod_modem_codec ;
 int gpiod_set_value (int ,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int ams_delta_digital_mute(struct snd_soc_dai *dai, int mute)
{
 int apply;

 if (ams_delta_muted == mute)
  return 0;

 spin_lock_bh(&ams_delta_lock);
 ams_delta_muted = mute;
 apply = !cx81801_cmd_pending;
 spin_unlock_bh(&ams_delta_lock);

 if (apply)
  gpiod_set_value(gpiod_modem_codec, !!mute);
 return 0;
}
