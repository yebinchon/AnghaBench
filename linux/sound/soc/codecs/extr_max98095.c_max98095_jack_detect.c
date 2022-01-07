
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_jack {int dummy; } ;
struct snd_soc_component {int dev; } ;
struct max98095_priv {struct snd_soc_jack* mic_jack; struct snd_soc_jack* headphone_jack; } ;
struct i2c_client {int irq; } ;


 int EINVAL ;
 int M98095_013_JACK_INT_EN ;
 int M98095_IDDONE ;
 int dev_err (int ,char*,int) ;
 int max98095_jack_detect_enable (struct snd_soc_component*) ;
 int max98095_report_jack (int ,struct snd_soc_component*) ;
 struct max98095_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;
 struct i2c_client* to_i2c_client (int ) ;

int max98095_jack_detect(struct snd_soc_component *component,
 struct snd_soc_jack *hp_jack, struct snd_soc_jack *mic_jack)
{
 struct max98095_priv *max98095 = snd_soc_component_get_drvdata(component);
 struct i2c_client *client = to_i2c_client(component->dev);
 int ret = 0;

 max98095->headphone_jack = hp_jack;
 max98095->mic_jack = mic_jack;


 if (!hp_jack && !mic_jack)
  return -EINVAL;

 max98095_jack_detect_enable(component);


 ret = snd_soc_component_update_bits(component, M98095_013_JACK_INT_EN,
  M98095_IDDONE, M98095_IDDONE);
 if (ret < 0) {
  dev_err(component->dev, "Failed to cfg jack irqs %d\n", ret);
  return ret;
 }

 max98095_report_jack(client->irq, component);
 return 0;
}
