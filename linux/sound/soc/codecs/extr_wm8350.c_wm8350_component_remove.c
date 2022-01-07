
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int work; int * jack; } ;
struct TYPE_5__ {int work; int * jack; } ;
struct TYPE_4__ {int * jack; } ;
struct wm8350_data {int pga_work; TYPE_3__ hpr; TYPE_2__ hpl; TYPE_1__ mic; } ;
struct wm8350 {int dummy; } ;
struct snd_soc_component {int dev; } ;


 int WM8350_CODEC_ENA ;
 int WM8350_IRQ_CODEC_JCK_DET_L ;
 int WM8350_IRQ_CODEC_JCK_DET_R ;
 int WM8350_IRQ_CODEC_MICD ;
 int WM8350_IRQ_CODEC_MICSCD ;
 int WM8350_JACK_DETECT ;
 int WM8350_JDL_ENA ;
 int WM8350_JDR_ENA ;
 int WM8350_POWER_MGMT_4 ;
 int WM8350_POWER_MGMT_5 ;
 int WM8350_TOCLK_ENA ;
 int cancel_delayed_work_sync (int *) ;
 struct wm8350* dev_get_platdata (int ) ;
 int flush_delayed_work (int *) ;
 struct wm8350_data* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int wm8350_clear_bits (struct wm8350*,int ,int) ;
 int wm8350_free_irq (struct wm8350*,int ,struct wm8350_data*) ;

__attribute__((used)) static void wm8350_component_remove(struct snd_soc_component *component)
{
 struct wm8350_data *priv = snd_soc_component_get_drvdata(component);
 struct wm8350 *wm8350 = dev_get_platdata(component->dev);

 wm8350_clear_bits(wm8350, WM8350_JACK_DETECT,
     WM8350_JDL_ENA | WM8350_JDR_ENA);
 wm8350_clear_bits(wm8350, WM8350_POWER_MGMT_4, WM8350_TOCLK_ENA);

 wm8350_free_irq(wm8350, WM8350_IRQ_CODEC_MICD, priv);
 wm8350_free_irq(wm8350, WM8350_IRQ_CODEC_MICSCD, priv);
 wm8350_free_irq(wm8350, WM8350_IRQ_CODEC_JCK_DET_L, priv);
 wm8350_free_irq(wm8350, WM8350_IRQ_CODEC_JCK_DET_R, priv);

 priv->hpl.jack = ((void*)0);
 priv->hpr.jack = ((void*)0);
 priv->mic.jack = ((void*)0);

 cancel_delayed_work_sync(&priv->hpl.work);
 cancel_delayed_work_sync(&priv->hpr.work);



 flush_delayed_work(&priv->pga_work);

 wm8350_clear_bits(wm8350, WM8350_POWER_MGMT_5, WM8350_CODEC_ENA);
}
