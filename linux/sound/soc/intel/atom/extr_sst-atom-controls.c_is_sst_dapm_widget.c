
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int id; } ;
__attribute__((used)) static bool is_sst_dapm_widget(struct snd_soc_dapm_widget *w)
{
 switch (w->id) {
 case 128:
 case 133:
 case 132:
 case 131:
 case 129:
 case 130:
  return 1;
 default:
  return 0;
 }
}
