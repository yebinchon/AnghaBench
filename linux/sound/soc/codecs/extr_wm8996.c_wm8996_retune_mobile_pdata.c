
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t items; char const** texts; } ;
struct wm8996_pdata {int num_retune_mobile_cfgs; TYPE_1__* retune_mobile_cfgs; } ;
struct wm8996_priv {int num_retune_mobile_texts; char const** retune_mobile_texts; TYPE_2__ retune_mobile_enum; struct wm8996_pdata pdata; } ;
struct snd_soc_component {int dev; } ;
struct snd_kcontrol_new {int dummy; } ;
struct TYPE_3__ {char* name; } ;


 int ARRAY_SIZE (struct snd_kcontrol_new*) ;
 int GFP_KERNEL ;
 struct snd_kcontrol_new SOC_ENUM_EXT (char*,TYPE_2__,int ,int ) ;
 int dev_dbg (int ,char*,size_t) ;
 int dev_err (int ,char*,int) ;
 char** krealloc (char const**,int,int ) ;
 int snd_soc_add_component_controls (struct snd_soc_component*,struct snd_kcontrol_new*,int ) ;
 struct wm8996_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 scalar_t__ strcmp (char*,char const*) ;
 int wm8996_get_retune_mobile_enum ;
 int wm8996_put_retune_mobile_enum ;

__attribute__((used)) static void wm8996_retune_mobile_pdata(struct snd_soc_component *component)
{
 struct wm8996_priv *wm8996 = snd_soc_component_get_drvdata(component);
 struct wm8996_pdata *pdata = &wm8996->pdata;

 struct snd_kcontrol_new controls[] = {
  SOC_ENUM_EXT("DSP1 EQ Mode",
        wm8996->retune_mobile_enum,
        wm8996_get_retune_mobile_enum,
        wm8996_put_retune_mobile_enum),
  SOC_ENUM_EXT("DSP2 EQ Mode",
        wm8996->retune_mobile_enum,
        wm8996_get_retune_mobile_enum,
        wm8996_put_retune_mobile_enum),
 };
 int ret, i, j;
 const char **t;





 wm8996->num_retune_mobile_texts = 0;
 wm8996->retune_mobile_texts = ((void*)0);
 for (i = 0; i < pdata->num_retune_mobile_cfgs; i++) {
  for (j = 0; j < wm8996->num_retune_mobile_texts; j++) {
   if (strcmp(pdata->retune_mobile_cfgs[i].name,
       wm8996->retune_mobile_texts[j]) == 0)
    break;
  }

  if (j != wm8996->num_retune_mobile_texts)
   continue;


  t = krealloc(wm8996->retune_mobile_texts,
        sizeof(char *) *
        (wm8996->num_retune_mobile_texts + 1),
        GFP_KERNEL);
  if (t == ((void*)0))
   continue;


  t[wm8996->num_retune_mobile_texts] =
   pdata->retune_mobile_cfgs[i].name;


  wm8996->num_retune_mobile_texts++;
  wm8996->retune_mobile_texts = t;
 }

 dev_dbg(component->dev, "Allocated %d unique ReTune Mobile names\n",
  wm8996->num_retune_mobile_texts);

 wm8996->retune_mobile_enum.items = wm8996->num_retune_mobile_texts;
 wm8996->retune_mobile_enum.texts = wm8996->retune_mobile_texts;

 ret = snd_soc_add_component_controls(component, controls, ARRAY_SIZE(controls));
 if (ret != 0)
  dev_err(component->dev,
   "Failed to add ReTune Mobile controls: %d\n", ret);
}
