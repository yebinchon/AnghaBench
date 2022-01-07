
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dev; } ;
struct es7134_data {struct es7134_chip* chip; } ;
struct es7134_chip {scalar_t__ extra_route_num; int extra_routes; scalar_t__ extra_widget_num; int extra_widgets; } ;


 int dev_err (int ,char*) ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 struct es7134_data* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_dapm_add_routes (struct snd_soc_dapm_context*,int ,scalar_t__) ;
 int snd_soc_dapm_new_controls (struct snd_soc_dapm_context*,int ,scalar_t__) ;

__attribute__((used)) static int es7134_component_probe(struct snd_soc_component *c)
{
 struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(c);
 struct es7134_data *priv = snd_soc_component_get_drvdata(c);
 const struct es7134_chip *chip = priv->chip;
 int ret;

 if (chip->extra_widget_num) {
  ret = snd_soc_dapm_new_controls(dapm, chip->extra_widgets,
      chip->extra_widget_num);
  if (ret) {
   dev_err(c->dev, "failed to add extra widgets\n");
   return ret;
  }
 }

 if (chip->extra_route_num) {
  ret = snd_soc_dapm_add_routes(dapm, chip->extra_routes,
           chip->extra_route_num);
  if (ret) {
   dev_err(c->dev, "failed to add extra routes\n");
   return ret;
  }
 }

 return 0;
}
