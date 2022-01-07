
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int id; } ;
struct list_head {int dummy; } ;


 int dapm_seq_insert (struct snd_soc_dapm_widget*,struct list_head*,int) ;
 int dapm_widget_power_check (struct snd_soc_dapm_widget*) ;
 int dapm_widget_set_power (struct snd_soc_dapm_widget*,int,struct list_head*,struct list_head*) ;



__attribute__((used)) static void dapm_power_one_widget(struct snd_soc_dapm_widget *w,
      struct list_head *up_list,
      struct list_head *down_list)
{
 int power;

 switch (w->id) {
 case 128:
  dapm_seq_insert(w, down_list, 0);
  break;
 case 129:
  dapm_seq_insert(w, up_list, 1);
  break;

 default:
  power = dapm_widget_power_check(w);

  dapm_widget_set_power(w, power, up_list, down_list);
  break;
 }
}
