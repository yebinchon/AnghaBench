
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int name_prefix; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 char* kasprintf (int ,char*,int ,char const*) ;
 int kfree (char*) ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 int snd_soc_dapm_nc_pin (struct snd_soc_dapm_context*,char const*) ;

int snd_soc_component_nc_pin(struct snd_soc_component *component,
        const char *pin)
{
 struct snd_soc_dapm_context *dapm =
  snd_soc_component_get_dapm(component);
 char *full_name;
 int ret;

 if (!component->name_prefix)
  return snd_soc_dapm_nc_pin(dapm, pin);

 full_name = kasprintf(GFP_KERNEL, "%s %s", component->name_prefix, pin);
 if (!full_name)
  return -ENOMEM;

 ret = snd_soc_dapm_nc_pin(dapm, full_name);
 kfree(full_name);

 return ret;
}
