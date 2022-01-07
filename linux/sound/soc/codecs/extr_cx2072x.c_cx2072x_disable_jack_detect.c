
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct cx2072x_priv {int regmap; } ;


 int CX2072X_PORTA_UNSOLICITED_RESPONSE ;
 int CX2072X_UM_INTERRUPT_CRTL_E ;
 int regmap_write (int ,int ,int ) ;
 struct cx2072x_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static void cx2072x_disable_jack_detect(struct snd_soc_component *codec)
{
 struct cx2072x_priv *cx2072x = snd_soc_component_get_drvdata(codec);

 regmap_write(cx2072x->regmap, CX2072X_UM_INTERRUPT_CRTL_E, 0);
 regmap_write(cx2072x->regmap, CX2072X_PORTA_UNSOLICITED_RESPONSE, 0);
}
