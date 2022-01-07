
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;


 int AK4671_FS ;
 int AK4671_FS_11_025KHZ ;
 int AK4671_FS_12KHZ ;
 int AK4671_FS_16KHZ ;
 int AK4671_FS_22_05KHZ ;
 int AK4671_FS_24KHZ ;
 int AK4671_FS_32KHZ ;
 int AK4671_FS_44_1KHZ ;
 int AK4671_FS_48KHZ ;
 int AK4671_FS_8KHZ ;
 int AK4671_PLL_MODE_SELECT0 ;
 int EINVAL ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int ) ;

__attribute__((used)) static int ak4671_hw_params(struct snd_pcm_substream *substream,
  struct snd_pcm_hw_params *params,
  struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 u8 fs;

 fs = snd_soc_component_read32(component, AK4671_PLL_MODE_SELECT0);
 fs &= ~AK4671_FS;

 switch (params_rate(params)) {
 case 8000:
  fs |= AK4671_FS_8KHZ;
  break;
 case 12000:
  fs |= AK4671_FS_12KHZ;
  break;
 case 16000:
  fs |= AK4671_FS_16KHZ;
  break;
 case 24000:
  fs |= AK4671_FS_24KHZ;
  break;
 case 11025:
  fs |= AK4671_FS_11_025KHZ;
  break;
 case 22050:
  fs |= AK4671_FS_22_05KHZ;
  break;
 case 32000:
  fs |= AK4671_FS_32KHZ;
  break;
 case 44100:
  fs |= AK4671_FS_44_1KHZ;
  break;
 case 48000:
  fs |= AK4671_FS_48KHZ;
  break;
 default:
  return -EINVAL;
 }

 snd_soc_component_write(component, AK4671_PLL_MODE_SELECT0, fs);

 return 0;
}
