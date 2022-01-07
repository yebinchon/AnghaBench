
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int component; } ;
struct cx2072x_priv {int en_aec_ref; } ;


 struct cx2072x_priv* snd_soc_component_get_drvdata (int ) ;

__attribute__((used)) static int cx2072x_dsp_dai_probe(struct snd_soc_dai *dai)
{
 struct cx2072x_priv *cx2072x =
  snd_soc_component_get_drvdata(dai->component);

 cx2072x->en_aec_ref = 1;
 return 0;
}
