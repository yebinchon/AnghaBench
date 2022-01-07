
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dai {size_t id; struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;
struct cs43130_private {TYPE_1__* dais; } ;
struct TYPE_2__ {unsigned int sclk; } ;


 int dev_dbg (int ,char*,size_t,unsigned int) ;
 struct cs43130_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int cs43130_set_sysclk(struct snd_soc_dai *codec_dai,
      int clk_id, unsigned int freq, int dir)
{
 struct snd_soc_component *component = codec_dai->component;
 struct cs43130_private *cs43130 = snd_soc_component_get_drvdata(component);

 cs43130->dais[codec_dai->id].sclk = freq;
 dev_dbg(component->dev, "dai_id = %d,  sclk = %u\n", codec_dai->id,
  cs43130->dais[codec_dai->id].sclk);

 return 0;
}
