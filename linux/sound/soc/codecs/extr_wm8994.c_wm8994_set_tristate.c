
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int id; struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int EINVAL ;
 int WM8994_AIF1_MASTER_SLAVE ;
 int WM8994_AIF1_TRI ;
 int WM8994_AIF2_MASTER_SLAVE ;
 int WM8994_AIF2_TRI ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int,int,int) ;

__attribute__((used)) static int wm8994_set_tristate(struct snd_soc_dai *codec_dai, int tristate)
{
 struct snd_soc_component *component = codec_dai->component;
 int reg, val, mask;

 switch (codec_dai->id) {
 case 1:
  reg = WM8994_AIF1_MASTER_SLAVE;
  mask = WM8994_AIF1_TRI;
  break;
 case 2:
  reg = WM8994_AIF2_MASTER_SLAVE;
  mask = WM8994_AIF2_TRI;
  break;
 default:
  return -EINVAL;
 }

 if (tristate)
  val = mask;
 else
  val = 0;

 return snd_soc_component_update_bits(component, reg, mask, val);
}
