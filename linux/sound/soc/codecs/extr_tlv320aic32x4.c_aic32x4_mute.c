
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int AIC32X4_DACMUTE ;
 int AIC32X4_MUTEON ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;

__attribute__((used)) static int aic32x4_mute(struct snd_soc_dai *dai, int mute)
{
 struct snd_soc_component *component = dai->component;

 snd_soc_component_update_bits(component, AIC32X4_DACMUTE,
    AIC32X4_MUTEON, mute ? AIC32X4_MUTEON : 0);

 return 0;
}
