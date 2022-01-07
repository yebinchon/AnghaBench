
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_context {scalar_t__ component; } ;


 int snd_soc_component_async_complete (scalar_t__) ;

__attribute__((used)) static void soc_dapm_async_complete(struct snd_soc_dapm_context *dapm)
{
 if (dapm->component)
  snd_soc_component_async_complete(dapm->component);
}
