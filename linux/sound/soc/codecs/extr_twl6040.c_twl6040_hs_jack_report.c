
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl6040_data {int mutex; } ;
struct snd_soc_jack {int dummy; } ;
struct snd_soc_component {int dummy; } ;


 int TWL6040_PLUGCOMP ;
 int TWL6040_REG_STATUS ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct twl6040_data* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_jack_report (struct snd_soc_jack*,int,int) ;
 int twl6040_read (struct snd_soc_component*,int ) ;

__attribute__((used)) static void twl6040_hs_jack_report(struct snd_soc_component *component,
       struct snd_soc_jack *jack, int report)
{
 struct twl6040_data *priv = snd_soc_component_get_drvdata(component);
 int status;

 mutex_lock(&priv->mutex);


 status = twl6040_read(component, TWL6040_REG_STATUS);
 if (status & TWL6040_PLUGCOMP)
  snd_soc_jack_report(jack, report, report);
 else
  snd_soc_jack_report(jack, 0, report);

 mutex_unlock(&priv->mutex);
}
