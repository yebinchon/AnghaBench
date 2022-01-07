
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct soc_mixer_control {int platform_max; int max; } ;
struct device {int dummy; } ;
struct cros_ec_codec_data {int max_dmic_gain; } ;
struct TYPE_2__ {scalar_t__ private_value; } ;


 struct cros_ec_codec_data* dev_get_drvdata (struct device*) ;
 int device_property_read_u32 (struct device*,char*,int *) ;
 TYPE_1__ mic_gain_control ;

__attribute__((used)) static int cros_ec_set_gain_range(struct device *dev)
{
 struct soc_mixer_control *control;
 struct cros_ec_codec_data *codec_data = dev_get_drvdata(dev);
 int rc;

 rc = device_property_read_u32(dev, "max-dmic-gain",
          &codec_data->max_dmic_gain);
 if (rc)
  return rc;

 control = (struct soc_mixer_control *)
    mic_gain_control.private_value;
 control->max = codec_data->max_dmic_gain;
 control->platform_max = codec_data->max_dmic_gain;

 return 0;
}
