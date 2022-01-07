
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_context {int dummy; } ;


 int snd_soc_dapm_disable_pin (struct snd_soc_dapm_context*,char*) ;

__attribute__((used)) static inline void twl4030_disconnect_pin(struct snd_soc_dapm_context *dapm,
       int connected, char *pin)
{
 if (!connected)
  snd_soc_dapm_disable_pin(dapm, pin);
}
