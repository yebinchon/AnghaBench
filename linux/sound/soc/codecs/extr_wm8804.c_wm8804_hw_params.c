
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_dai {int dev; struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;


 int EINVAL ;
 int WM8804_AIFRX ;
 int WM8804_AIFTX ;
 int dev_err (int ,char*,int) ;
 int params_width (struct snd_pcm_hw_params*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;

__attribute__((used)) static int wm8804_hw_params(struct snd_pcm_substream *substream,
       struct snd_pcm_hw_params *params,
       struct snd_soc_dai *dai)
{
 struct snd_soc_component *component;
 u16 blen;

 component = dai->component;

 switch (params_width(params)) {
 case 16:
  blen = 0x0;
  break;
 case 20:
  blen = 0x1;
  break;
 case 24:
  blen = 0x2;
  break;
 default:
  dev_err(dai->dev, "Unsupported word length: %u\n",
   params_width(params));
  return -EINVAL;
 }


 snd_soc_component_update_bits(component, WM8804_AIFTX, 0xc, blen << 2);
 snd_soc_component_update_bits(component, WM8804_AIFRX, 0xc, blen << 2);

 return 0;
}
