
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct jz_icdc {int clk; } ;


 int clk_disable_unprepare (int ) ;
 struct jz_icdc* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static void jz4725b_codec_dev_remove(struct snd_soc_component *component)
{
 struct jz_icdc *icdc = snd_soc_component_get_drvdata(component);

 clk_disable_unprepare(icdc->clk);
}
