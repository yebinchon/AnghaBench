
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_soc_dapm_route {void* source; int sink; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_dai {int id; TYPE_3__* driver; scalar_t__ active; struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;
struct arizona_priv {struct arizona_dai_priv* dai; } ;
struct arizona_dai_priv {int clk; } ;
typedef int routes ;
struct TYPE_5__ {int stream_name; } ;
struct TYPE_4__ {int stream_name; } ;
struct TYPE_6__ {TYPE_2__ playback; TYPE_1__ capture; } ;




 int ARRAY_SIZE (struct snd_soc_dapm_route*) ;
 int EBUSY ;
 int EINVAL ;
 void* arizona_dai_clk_str (int) ;
 int dev_dbg (int ,char*,int,void*) ;
 int dev_err (int ,char*,int) ;
 int memset (struct snd_soc_dapm_route**,int ,int) ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 struct arizona_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_dapm_add_routes (struct snd_soc_dapm_context*,struct snd_soc_dapm_route*,int ) ;
 int snd_soc_dapm_del_routes (struct snd_soc_dapm_context*,struct snd_soc_dapm_route*,int ) ;
 int snd_soc_dapm_sync (struct snd_soc_dapm_context*) ;

__attribute__((used)) static int arizona_dai_set_sysclk(struct snd_soc_dai *dai,
      int clk_id, unsigned int freq, int dir)
{
 struct snd_soc_component *component = dai->component;
 struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(component);
 struct arizona_priv *priv = snd_soc_component_get_drvdata(component);
 struct arizona_dai_priv *dai_priv = &priv->dai[dai->id - 1];
 struct snd_soc_dapm_route routes[2];

 switch (clk_id) {
 case 128:
 case 129:
  break;
 default:
  return -EINVAL;
 }

 if (clk_id == dai_priv->clk)
  return 0;

 if (dai->active) {
  dev_err(component->dev, "Can't change clock on active DAI %d\n",
   dai->id);
  return -EBUSY;
 }

 dev_dbg(component->dev, "Setting AIF%d to %s\n", dai->id + 1,
  arizona_dai_clk_str(clk_id));

 memset(&routes, 0, sizeof(routes));
 routes[0].sink = dai->driver->capture.stream_name;
 routes[1].sink = dai->driver->playback.stream_name;

 routes[0].source = arizona_dai_clk_str(dai_priv->clk);
 routes[1].source = arizona_dai_clk_str(dai_priv->clk);
 snd_soc_dapm_del_routes(dapm, routes, ARRAY_SIZE(routes));

 routes[0].source = arizona_dai_clk_str(clk_id);
 routes[1].source = arizona_dai_clk_str(clk_id);
 snd_soc_dapm_add_routes(dapm, routes, ARRAY_SIZE(routes));

 dai_priv->clk = clk_id;

 return snd_soc_dapm_sync(dapm);
}
