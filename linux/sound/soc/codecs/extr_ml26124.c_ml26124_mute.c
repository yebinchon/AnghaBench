
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct ml26124_priv {TYPE_1__* substream; } ;
struct TYPE_2__ {int stream; } ;


 int BIT (int) ;
 int DVOL_CTL_DVMUTE_OFF ;
 int DVOL_CTL_DVMUTE_ON ;
 int ML26124_DVOL_CTL ;
 int ML26124_REC_PLYBAK_RUN ;


 struct ml26124_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int) ;

__attribute__((used)) static int ml26124_mute(struct snd_soc_dai *dai, int mute)
{
 struct snd_soc_component *component = dai->component;
 struct ml26124_priv *priv = snd_soc_component_get_drvdata(component);

 switch (priv->substream->stream) {
 case 129:
  snd_soc_component_update_bits(component, ML26124_REC_PLYBAK_RUN, BIT(0), 1);
  break;
 case 128:
  snd_soc_component_update_bits(component, ML26124_REC_PLYBAK_RUN, BIT(1), 2);
  break;
 }

 if (mute)
  snd_soc_component_update_bits(component, ML26124_DVOL_CTL, BIT(4),
        DVOL_CTL_DVMUTE_ON);
 else
  snd_soc_component_update_bits(component, ML26124_DVOL_CTL, BIT(4),
        DVOL_CTL_DVMUTE_OFF);

 return 0;
}
