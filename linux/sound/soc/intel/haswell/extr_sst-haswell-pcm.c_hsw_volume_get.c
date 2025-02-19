
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sst_hsw {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {void** value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct hsw_priv_data {int dev; struct sst_hsw* hsw; } ;


 void* hsw_ipc_to_mixer (unsigned int) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 struct hsw_priv_data* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;
 int sst_hsw_mixer_get_volume (struct sst_hsw*,int ,int,unsigned int*) ;

__attribute__((used)) static int hsw_volume_get(struct snd_kcontrol *kcontrol,
    struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component = snd_soc_kcontrol_component(kcontrol);
 struct hsw_priv_data *pdata = snd_soc_component_get_drvdata(component);
 struct sst_hsw *hsw = pdata->hsw;
 unsigned int volume = 0;

 pm_runtime_get_sync(pdata->dev);
 sst_hsw_mixer_get_volume(hsw, 0, 0, &volume);
 ucontrol->value.integer.value[0] = hsw_ipc_to_mixer(volume);

 sst_hsw_mixer_get_volume(hsw, 0, 1, &volume);
 ucontrol->value.integer.value[1] = hsw_ipc_to_mixer(volume);

 pm_runtime_mark_last_busy(pdata->dev);
 pm_runtime_put_autosuspend(pdata->dev);
 return 0;
}
