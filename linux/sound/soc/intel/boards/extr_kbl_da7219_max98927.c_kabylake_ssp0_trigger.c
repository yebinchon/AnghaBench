
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {int num_codecs; int dev; struct snd_soc_dai** codec_dais; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {char* name; char* name_prefix; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;


 int ARRAY_SIZE (char*) ;
 int MAX98373_DEV0_NAME ;
 int MAX98373_DEV1_NAME ;
 int MAX98927_DEV0_NAME ;
 int MAX98927_DEV1_NAME ;






 int dev_err (int ,char*,char*,int) ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 int snd_soc_dapm_disable_pin (struct snd_soc_dapm_context*,char*) ;
 int snd_soc_dapm_enable_pin (struct snd_soc_dapm_context*,char*) ;
 int snd_soc_dapm_sync (struct snd_soc_dapm_context*) ;
 int snprintf (char*,int ,char*,char*) ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static int kabylake_ssp0_trigger(struct snd_pcm_substream *substream, int cmd)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 int j, ret;

 for (j = 0; j < rtd->num_codecs; j++) {
  struct snd_soc_dai *codec_dai = rtd->codec_dais[j];
  const char *name = codec_dai->component->name;
  struct snd_soc_component *component = codec_dai->component;
  struct snd_soc_dapm_context *dapm =
    snd_soc_component_get_dapm(component);
  char pin_name[20];

  if (strcmp(name, MAX98927_DEV0_NAME) &&
   strcmp(name, MAX98927_DEV1_NAME) &&
   strcmp(name, MAX98373_DEV0_NAME) &&
   strcmp(name, MAX98373_DEV1_NAME))
   continue;

  snprintf(pin_name, ARRAY_SIZE(pin_name), "%s Spk",
   codec_dai->component->name_prefix);

  switch (cmd) {
  case 130:
  case 131:
  case 132:
   ret = snd_soc_dapm_enable_pin(dapm, pin_name);
   if (ret) {
    dev_err(rtd->dev, "failed to enable %s: %d\n",
    pin_name, ret);
    return ret;
   }
   snd_soc_dapm_sync(dapm);
   break;
  case 129:
  case 128:
  case 133:
   ret = snd_soc_dapm_disable_pin(dapm, pin_name);
   if (ret) {
    dev_err(rtd->dev, "failed to disable %s: %d\n",
    pin_name, ret);
    return ret;
   }
   snd_soc_dapm_sync(dapm);
   break;
  }
 }

 return 0;
}
