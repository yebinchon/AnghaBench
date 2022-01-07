
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int name; int dapm; } ;
struct snd_soc_component {int dummy; } ;


 int EINVAL ;
 int MICB_DISABLE ;
 int MICB_ENABLE ;
 int MIC_BIAS_1 ;
 int MIC_BIAS_2 ;
 int MIC_BIAS_3 ;
 int MIC_BIAS_4 ;



 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;
 scalar_t__ strnstr (int ,char*,int) ;
 int usleep_range (int,int) ;
 int wcd9335_micbias_control (struct snd_soc_component*,int,int ,int) ;

__attribute__((used)) static int __wcd9335_codec_enable_micbias(struct snd_soc_dapm_widget *w,
     int event)
{
 struct snd_soc_component *comp = snd_soc_dapm_to_component(w->dapm);
 int micb_num;

 if (strnstr(w->name, "MIC BIAS1", sizeof("MIC BIAS1")))
  micb_num = MIC_BIAS_1;
 else if (strnstr(w->name, "MIC BIAS2", sizeof("MIC BIAS2")))
  micb_num = MIC_BIAS_2;
 else if (strnstr(w->name, "MIC BIAS3", sizeof("MIC BIAS3")))
  micb_num = MIC_BIAS_3;
 else if (strnstr(w->name, "MIC BIAS4", sizeof("MIC BIAS4")))
  micb_num = MIC_BIAS_4;
 else
  return -EINVAL;

 switch (event) {
 case 128:





  wcd9335_micbias_control(comp, micb_num, MICB_ENABLE, 1);
  break;
 case 129:

  usleep_range(1000, 1100);
  break;
 case 130:
  wcd9335_micbias_control(comp, micb_num, MICB_DISABLE, 1);
  break;
 };

 return 0;
}
