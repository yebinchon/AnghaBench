
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct cros_ec_codec_data {int dev; } ;


 int cros_ec_set_gain_range (int ) ;
 int mic_gain_control ;
 int snd_soc_add_component_controls (struct snd_soc_component*,int *,int) ;
 struct cros_ec_codec_data* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int cros_ec_codec_probe(struct snd_soc_component *component)
{
 int rc;

 struct cros_ec_codec_data *codec_data =
  snd_soc_component_get_drvdata(component);

 rc = cros_ec_set_gain_range(codec_data->dev);
 if (rc)
  return rc;

 return snd_soc_add_component_controls(component, &mic_gain_control, 1);
}
