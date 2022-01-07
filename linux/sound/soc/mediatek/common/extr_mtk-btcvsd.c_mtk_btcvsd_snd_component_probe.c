
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int mtk_btcvsd_snd_controls ;
 int snd_soc_add_component_controls (struct snd_soc_component*,int ,int ) ;

__attribute__((used)) static int mtk_btcvsd_snd_component_probe(struct snd_soc_component *component)
{
 return snd_soc_add_component_controls(component,
  mtk_btcvsd_snd_controls,
  ARRAY_SIZE(mtk_btcvsd_snd_controls));
}
