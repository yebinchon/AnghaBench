
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dev; } ;
struct snd_kcontrol {int dummy; } ;


 int ARIZONA_ASRC_RATE1 ;
 unsigned int ARIZONA_ASRC_RATE1_MASK ;
 unsigned int ARIZONA_ASRC_RATE1_SHIFT ;
 int ARIZONA_ASRC_RATE2 ;
 unsigned int ARIZONA_ASRC_RATE2_MASK ;
 unsigned int ARIZONA_ASRC_RATE2_SHIFT ;
 int ARIZONA_ASYNC_SAMPLE_RATE_1 ;
 int ARIZONA_SAMPLE_RATE_1 ;
 int EINVAL ;

 int arizona_sample_rate_val_to_name (unsigned int) ;
 int dev_err (int ,char*,unsigned int) ;
 int dev_warn (int ,char*,int ) ;
 unsigned int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int wm8998_asrc_ev(struct snd_soc_dapm_widget *w,
     struct snd_kcontrol *kcontrol,
     int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 unsigned int val;

 switch (event) {
 case 128:
  val = snd_soc_component_read32(component, ARIZONA_ASRC_RATE1);
  val &= ARIZONA_ASRC_RATE1_MASK;
  val >>= ARIZONA_ASRC_RATE1_SHIFT;

  switch (val) {
  case 0:
  case 1:
  case 2:
   val = snd_soc_component_read32(component,
        ARIZONA_SAMPLE_RATE_1 + val);
   if (val >= 0x11) {
    dev_warn(component->dev,
      "Unsupported ASRC rate1 (%s)\n",
      arizona_sample_rate_val_to_name(val));
    return -EINVAL;
   }
   break;
  default:
   dev_err(component->dev,
    "Illegal ASRC rate1 selector (0x%x)\n",
    val);
   return -EINVAL;
  }

  val = snd_soc_component_read32(component, ARIZONA_ASRC_RATE2);
  val &= ARIZONA_ASRC_RATE2_MASK;
  val >>= ARIZONA_ASRC_RATE2_SHIFT;

  switch (val) {
  case 8:
  case 9:
   val -= 0x8;
   val = snd_soc_component_read32(component,
        ARIZONA_ASYNC_SAMPLE_RATE_1 + val);
   if (val >= 0x11) {
    dev_warn(component->dev,
      "Unsupported ASRC rate2 (%s)\n",
      arizona_sample_rate_val_to_name(val));
    return -EINVAL;
   }
   break;
  default:
   dev_err(component->dev,
    "Illegal ASRC rate2 selector (0x%x)\n",
    val);
   return -EINVAL;
  }
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
