
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dummy; } ;
struct snd_soc_dapm_wcache {struct snd_soc_dapm_widget* widget; } ;



__attribute__((used)) static inline void dapm_wcache_update(struct snd_soc_dapm_wcache *wcache,
          struct snd_soc_dapm_widget *w)
{
 wcache->widget = w;
}
