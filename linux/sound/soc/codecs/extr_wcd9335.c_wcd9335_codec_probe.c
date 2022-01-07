
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wcd9335_codec {TYPE_1__* dai; struct snd_soc_component* component; int hph_mode; int clsh_ctrl; int version; int regmap; } ;
struct snd_soc_component {int dev; } ;
struct TYPE_2__ {int slim_ch_list; } ;


 int CLS_H_HIFI ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (int ) ;
 int NUM_CODEC_DAIS ;
 int PTR_ERR (int ) ;
 struct wcd9335_codec* dev_get_drvdata (int ) ;
 int snd_soc_component_init_regmap (struct snd_soc_component*,int ) ;
 int wcd9335_codec_init (struct snd_soc_component*) ;
 int wcd9335_setup_irqs (struct wcd9335_codec*) ;
 int wcd_clsh_ctrl_alloc (struct snd_soc_component*,int ) ;

__attribute__((used)) static int wcd9335_codec_probe(struct snd_soc_component *component)
{
 struct wcd9335_codec *wcd = dev_get_drvdata(component->dev);
 int i;

 snd_soc_component_init_regmap(component, wcd->regmap);

 wcd->clsh_ctrl = wcd_clsh_ctrl_alloc(component, wcd->version);
 if (IS_ERR(wcd->clsh_ctrl))
  return PTR_ERR(wcd->clsh_ctrl);


 wcd->hph_mode = CLS_H_HIFI;
 wcd->component = component;

 wcd9335_codec_init(component);

 for (i = 0; i < NUM_CODEC_DAIS; i++)
  INIT_LIST_HEAD(&wcd->dai[i].slim_ch_list);

 return wcd9335_setup_irqs(wcd);
}
