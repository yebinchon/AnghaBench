
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm_hubs_data {int dcs_done; int dcs_cache; struct snd_soc_component* component; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int INIT_LIST_HEAD (int *) ;
 int analogue_routes ;
 int init_completion (int *) ;
 int lineout1_diff_routes ;
 int lineout1_se_routes ;
 int lineout2_diff_routes ;
 int lineout2_se_routes ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 struct wm_hubs_data* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_dapm_add_routes (struct snd_soc_dapm_context*,int ,int ) ;

int wm_hubs_add_analogue_routes(struct snd_soc_component *component,
    int lineout1_diff, int lineout2_diff)
{
 struct wm_hubs_data *hubs = snd_soc_component_get_drvdata(component);
 struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(component);

 hubs->component = component;

 INIT_LIST_HEAD(&hubs->dcs_cache);
 init_completion(&hubs->dcs_done);

 snd_soc_dapm_add_routes(dapm, analogue_routes,
    ARRAY_SIZE(analogue_routes));

 if (lineout1_diff)
  snd_soc_dapm_add_routes(dapm,
     lineout1_diff_routes,
     ARRAY_SIZE(lineout1_diff_routes));
 else
  snd_soc_dapm_add_routes(dapm,
     lineout1_se_routes,
     ARRAY_SIZE(lineout1_se_routes));

 if (lineout2_diff)
  snd_soc_dapm_add_routes(dapm,
     lineout2_diff_routes,
     ARRAY_SIZE(lineout2_diff_routes));
 else
  snd_soc_dapm_add_routes(dapm,
     lineout2_se_routes,
     ARRAY_SIZE(lineout2_se_routes));

 return 0;
}
