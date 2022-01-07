
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dapm_context {TYPE_1__* component; } ;
struct nau8824 {struct snd_soc_dapm_context* dapm; } ;
typedef int prefixed_pin ;
struct TYPE_2__ {char* name_prefix; } ;


 int snd_soc_dapm_force_enable_pin (struct snd_soc_dapm_context*,char const*) ;
 int snprintf (char*,int,char*,char const*,char const*) ;

__attribute__((used)) static void nau8824_dapm_enable_pin(struct nau8824 *nau8824, const char *pin)
{
 struct snd_soc_dapm_context *dapm = nau8824->dapm;
 const char *prefix = dapm->component->name_prefix;
 char prefixed_pin[80];

 if (prefix) {
  snprintf(prefixed_pin, sizeof(prefixed_pin), "%s %s",
    prefix, pin);
  snd_soc_dapm_force_enable_pin(dapm, prefixed_pin);
 } else {
  snd_soc_dapm_force_enable_pin(dapm, pin);
 }
}
