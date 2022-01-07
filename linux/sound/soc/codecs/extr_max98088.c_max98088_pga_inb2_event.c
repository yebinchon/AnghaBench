
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 int LINE_INB ;
 int max98088_line_pga (struct snd_soc_dapm_widget*,int,int ,int) ;

__attribute__((used)) static int max98088_pga_inb2_event(struct snd_soc_dapm_widget *w,
                                  struct snd_kcontrol *k, int event)
{
       return max98088_line_pga(w, event, LINE_INB, 2);
}
