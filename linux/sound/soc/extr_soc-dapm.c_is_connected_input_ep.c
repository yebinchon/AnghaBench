
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dummy; } ;
struct list_head {int dummy; } ;


 int SND_SOC_DAPM_DIR_IN ;
 int is_connected_ep (struct snd_soc_dapm_widget*,struct list_head*,int ,int (*) (struct snd_soc_dapm_widget*,struct list_head*,int (*) (struct snd_soc_dapm_widget*,int)),int (*) (struct snd_soc_dapm_widget*,int)) ;

__attribute__((used)) static int is_connected_input_ep(struct snd_soc_dapm_widget *widget,
 struct list_head *list,
 bool (*custom_stop_condition)(struct snd_soc_dapm_widget *i,
          enum snd_soc_dapm_direction))
{
 return is_connected_ep(widget, list, SND_SOC_DAPM_DIR_IN,
   is_connected_input_ep, custom_stop_condition);
}
