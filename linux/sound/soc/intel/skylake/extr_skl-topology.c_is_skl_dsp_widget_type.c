
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dapm_widget {int id; TYPE_1__* dapm; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* dev; } ;
__attribute__((used)) static int is_skl_dsp_widget_type(struct snd_soc_dapm_widget *w,
      struct device *dev)
{
 if (w->dapm->dev != dev)
  return 0;

 switch (w->id) {
 case 132:
 case 133:
 case 135:
 case 134:
 case 131:
 case 128:
 case 129:
 case 130:

  return 0;
 default:
  return 1;
 }
}
