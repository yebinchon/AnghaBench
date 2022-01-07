
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dummy; } ;


 int DAPM_UPDATE_STAT (struct snd_soc_dapm_widget*,int ) ;
 int is_connected_input_ep (struct snd_soc_dapm_widget*,int *,int *) ;
 int is_connected_output_ep (struct snd_soc_dapm_widget*,int *,int *) ;
 int power_checks ;

__attribute__((used)) static int dapm_generic_check_power(struct snd_soc_dapm_widget *w)
{
 int in, out;

 DAPM_UPDATE_STAT(w, power_checks);

 in = is_connected_input_ep(w, ((void*)0), ((void*)0));
 out = is_connected_output_ep(w, ((void*)0), ((void*)0));
 return out != 0 && in != 0;
}
