
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int connected; } ;



__attribute__((used)) static int dapm_always_on_check_power(struct snd_soc_dapm_widget *w)
{
 return w->connected;
}
