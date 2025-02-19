
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl6040_jack_data {int report; struct snd_soc_jack* jack; } ;
struct twl6040_data {struct twl6040_jack_data hs_jack; } ;
struct snd_soc_jack {int dummy; } ;
struct snd_soc_component {int dummy; } ;


 struct twl6040_data* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int twl6040_hs_jack_report (struct snd_soc_component*,struct snd_soc_jack*,int) ;

void twl6040_hs_jack_detect(struct snd_soc_component *component,
    struct snd_soc_jack *jack, int report)
{
 struct twl6040_data *priv = snd_soc_component_get_drvdata(component);
 struct twl6040_jack_data *hs_jack = &priv->hs_jack;

 hs_jack->jack = jack;
 hs_jack->report = report;

 twl6040_hs_jack_report(component, hs_jack->jack, hs_jack->report);
}
