
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct mc13783_priv {int mc13xxx; } ;


 int MC13783_AUDIO_RX0 ;
 int mc13xxx_reg_rmw (int ,int ,int,int ) ;
 struct mc13783_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static void mc13783_remove(struct snd_soc_component *component)
{
 struct mc13783_priv *priv = snd_soc_component_get_drvdata(component);


 mc13xxx_reg_rmw(priv->mc13xxx, MC13783_AUDIO_RX0, 0x3, 0);
}
