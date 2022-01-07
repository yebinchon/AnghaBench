
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {struct snd_soc_component* component; } ;
struct TYPE_6__ {size_t items; char const** texts; } ;
struct wm8994_priv {int num_retune_mobile_texts; char const** retune_mobile_texts; TYPE_2__ hubs; TYPE_3__ retune_mobile_enum; struct wm8994* wm8994; } ;
struct wm8994_pdata {int num_retune_mobile_cfgs; TYPE_1__* retune_mobile_cfgs; } ;
struct wm8994 {struct wm8994_pdata pdata; } ;
struct snd_soc_component {int dev; } ;
struct snd_kcontrol_new {int dummy; } ;
struct TYPE_4__ {char* name; } ;


 int ARRAY_SIZE (struct snd_kcontrol_new*) ;
 int GFP_KERNEL ;
 struct snd_kcontrol_new SOC_ENUM_EXT (char*,TYPE_3__,int ,int ) ;
 int dev_dbg (int ,char*,size_t) ;
 int dev_err (int ,char*,int) ;
 char** krealloc (char const**,int,int ) ;
 int snd_soc_add_component_controls (struct snd_soc_component*,struct snd_kcontrol_new*,int ) ;
 scalar_t__ strcmp (char*,char const*) ;
 int wm8994_get_retune_mobile_enum ;
 int wm8994_put_retune_mobile_enum ;

__attribute__((used)) static void wm8994_handle_retune_mobile_pdata(struct wm8994_priv *wm8994)
{
 struct snd_soc_component *component = wm8994->hubs.component;
 struct wm8994 *control = wm8994->wm8994;
 struct wm8994_pdata *pdata = &control->pdata;
 struct snd_kcontrol_new controls[] = {
  SOC_ENUM_EXT("AIF1.1 EQ Mode",
        wm8994->retune_mobile_enum,
        wm8994_get_retune_mobile_enum,
        wm8994_put_retune_mobile_enum),
  SOC_ENUM_EXT("AIF1.2 EQ Mode",
        wm8994->retune_mobile_enum,
        wm8994_get_retune_mobile_enum,
        wm8994_put_retune_mobile_enum),
  SOC_ENUM_EXT("AIF2 EQ Mode",
        wm8994->retune_mobile_enum,
        wm8994_get_retune_mobile_enum,
        wm8994_put_retune_mobile_enum),
 };
 int ret, i, j;
 const char **t;





 wm8994->num_retune_mobile_texts = 0;
 wm8994->retune_mobile_texts = ((void*)0);
 for (i = 0; i < pdata->num_retune_mobile_cfgs; i++) {
  for (j = 0; j < wm8994->num_retune_mobile_texts; j++) {
   if (strcmp(pdata->retune_mobile_cfgs[i].name,
       wm8994->retune_mobile_texts[j]) == 0)
    break;
  }

  if (j != wm8994->num_retune_mobile_texts)
   continue;


  t = krealloc(wm8994->retune_mobile_texts,
        sizeof(char *) *
        (wm8994->num_retune_mobile_texts + 1),
        GFP_KERNEL);
  if (t == ((void*)0))
   continue;


  t[wm8994->num_retune_mobile_texts] =
   pdata->retune_mobile_cfgs[i].name;


  wm8994->num_retune_mobile_texts++;
  wm8994->retune_mobile_texts = t;
 }

 dev_dbg(component->dev, "Allocated %d unique ReTune Mobile names\n",
  wm8994->num_retune_mobile_texts);

 wm8994->retune_mobile_enum.items = wm8994->num_retune_mobile_texts;
 wm8994->retune_mobile_enum.texts = wm8994->retune_mobile_texts;

 ret = snd_soc_add_component_controls(wm8994->hubs.component, controls,
       ARRAY_SIZE(controls));
 if (ret != 0)
  dev_err(wm8994->hubs.component->dev,
   "Failed to add ReTune Mobile controls: %d\n", ret);
}
