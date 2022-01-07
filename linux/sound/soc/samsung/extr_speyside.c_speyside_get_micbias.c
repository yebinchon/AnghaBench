
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int name; } ;


 scalar_t__ speyside_jack_polarity ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int speyside_get_micbias(struct snd_soc_dapm_widget *source,
    struct snd_soc_dapm_widget *sink)
{
 if (speyside_jack_polarity && (strcmp(source->name, "MICB1") == 0))
  return 1;
 if (!speyside_jack_polarity && (strcmp(source->name, "MICB2") == 0))
  return 1;

 return 0;
}
