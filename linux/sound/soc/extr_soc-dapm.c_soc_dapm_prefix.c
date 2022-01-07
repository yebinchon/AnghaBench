
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dapm_context {TYPE_1__* component; } ;
struct TYPE_2__ {char const* name_prefix; } ;



__attribute__((used)) static const char *soc_dapm_prefix(struct snd_soc_dapm_context *dapm)
{
 if (!dapm->component)
  return ((void*)0);
 return dapm->component->name_prefix;
}
