
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct ak4535_priv {int sysclk; } ;


 int AK4535_MODE2 ;
 int params_rate (struct snd_pcm_hw_params*) ;
 struct ak4535_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int ak4535_hw_params(struct snd_pcm_substream *substream,
       struct snd_pcm_hw_params *params,
       struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct ak4535_priv *ak4535 = snd_soc_component_get_drvdata(component);
 u8 mode2 = snd_soc_component_read32(component, AK4535_MODE2) & ~(0x3 << 5);
 int rate = params_rate(params), fs = 256;

 if (rate)
  fs = ak4535->sysclk / rate;


 switch (fs) {
 case 1024:
  mode2 |= (0x2 << 5);
  break;
 case 512:
  mode2 |= (0x1 << 5);
  break;
 case 256:
  break;
 }


 snd_soc_component_write(component, AK4535_MODE2, mode2);
 return 0;
}
