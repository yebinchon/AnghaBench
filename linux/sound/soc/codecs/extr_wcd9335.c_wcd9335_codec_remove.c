
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcd9335_codec {int irq_data; int clsh_ctrl; } ;
struct snd_soc_component {int dev; } ;


 int WCD9335_IRQ_SLIMBUS ;
 struct wcd9335_codec* dev_get_drvdata (int ) ;
 int free_irq (int ,struct wcd9335_codec*) ;
 int regmap_irq_get_virq (int ,int ) ;
 int wcd_clsh_ctrl_free (int ) ;

__attribute__((used)) static void wcd9335_codec_remove(struct snd_soc_component *comp)
{
 struct wcd9335_codec *wcd = dev_get_drvdata(comp->dev);

 wcd_clsh_ctrl_free(wcd->clsh_ctrl);
 free_irq(regmap_irq_get_virq(wcd->irq_data, WCD9335_IRQ_SLIMBUS), wcd);
}
