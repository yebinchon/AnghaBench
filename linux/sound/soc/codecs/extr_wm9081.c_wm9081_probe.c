
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_retune_configs; } ;
struct wm9081_priv {TYPE_1__ pdata; } ;
struct snd_soc_component {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int WM9081_ANALOGUE_LINEOUT ;
 int WM9081_ANALOGUE_SPEAKER_PGA ;
 int WM9081_LINEOUTZC ;
 int WM9081_SPKPGAZC ;
 int dev_dbg (int ,char*) ;
 int snd_soc_add_component_controls (struct snd_soc_component*,int ,int ) ;
 struct wm9081_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;
 int wm9081_eq_controls ;

__attribute__((used)) static int wm9081_probe(struct snd_soc_component *component)
{
 struct wm9081_priv *wm9081 = snd_soc_component_get_drvdata(component);


 snd_soc_component_update_bits(component, WM9081_ANALOGUE_LINEOUT,
       WM9081_LINEOUTZC, WM9081_LINEOUTZC);
 snd_soc_component_update_bits(component, WM9081_ANALOGUE_SPEAKER_PGA,
       WM9081_SPKPGAZC, WM9081_SPKPGAZC);

 if (!wm9081->pdata.num_retune_configs) {
  dev_dbg(component->dev,
   "No ReTune Mobile data, using normal EQ\n");
  snd_soc_add_component_controls(component, wm9081_eq_controls,
         ARRAY_SIZE(wm9081_eq_controls));
 }

 return 0;
}
