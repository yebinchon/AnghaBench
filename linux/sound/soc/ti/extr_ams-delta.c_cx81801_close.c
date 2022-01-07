
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tty_struct {struct snd_soc_component* disc_data; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {TYPE_1__* card; } ;
struct TYPE_6__ {int pins; } ;
struct TYPE_5__ {int (* close ) (struct tty_struct*) ;} ;
struct TYPE_4__ {struct snd_soc_dapm_context dapm; } ;


 int INIT_LIST_HEAD (int *) ;
 TYPE_3__ ams_delta_hook_switch ;
 int cx81801_timer ;
 int del_timer_sync (int *) ;
 int snd_soc_dapm_disable_pin_unlocked (struct snd_soc_dapm_context*,char*) ;
 int snd_soc_dapm_enable_pin_unlocked (struct snd_soc_dapm_context*,char*) ;
 int snd_soc_dapm_mutex_lock (struct snd_soc_dapm_context*) ;
 int snd_soc_dapm_mutex_unlock (struct snd_soc_dapm_context*) ;
 int snd_soc_dapm_sync_unlocked (struct snd_soc_dapm_context*) ;
 int stub1 (struct tty_struct*) ;
 TYPE_2__ v253_ops ;

__attribute__((used)) static void cx81801_close(struct tty_struct *tty)
{
 struct snd_soc_component *component = tty->disc_data;
 struct snd_soc_dapm_context *dapm = &component->card->dapm;

 del_timer_sync(&cx81801_timer);


 INIT_LIST_HEAD(&ams_delta_hook_switch.pins);

 if (!component)
  return;

 v253_ops.close(tty);


 snd_soc_dapm_mutex_lock(dapm);

 snd_soc_dapm_disable_pin_unlocked(dapm, "Mouthpiece");
 snd_soc_dapm_enable_pin_unlocked(dapm, "Earpiece");
 snd_soc_dapm_enable_pin_unlocked(dapm, "Microphone");
 snd_soc_dapm_disable_pin_unlocked(dapm, "Speaker");
 snd_soc_dapm_disable_pin_unlocked(dapm, "AGCIN");

 snd_soc_dapm_sync_unlocked(dapm);

 snd_soc_dapm_mutex_unlock(dapm);
}
