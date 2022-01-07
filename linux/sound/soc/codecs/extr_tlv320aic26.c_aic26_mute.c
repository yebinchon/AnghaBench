
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct aic26 {TYPE_1__* spi; } ;
struct TYPE_2__ {int dev; } ;


 int AIC26_REG_DAC_GAIN ;
 int dev_dbg (int *,char*,struct snd_soc_dai*,int) ;
 struct aic26* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;

__attribute__((used)) static int aic26_mute(struct snd_soc_dai *dai, int mute)
{
 struct snd_soc_component *component = dai->component;
 struct aic26 *aic26 = snd_soc_component_get_drvdata(component);
 u16 reg;

 dev_dbg(&aic26->spi->dev, "aic26_mute(dai=%p, mute=%i)\n",
  dai, mute);

 if (mute)
  reg = 0x8080;
 else
  reg = 0;
 snd_soc_component_update_bits(component, AIC26_REG_DAC_GAIN, 0x8000, reg);

 return 0;
}
