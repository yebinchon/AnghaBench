
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_soc_component {int dummy; } ;
struct ec_param_codec_i2s {int cmd; } ;
struct ec_codec_i2s_gain {int right; int left; } ;


 int EC_CODEC_GET_GAIN ;
 int ec_command_get_gain (struct snd_soc_component*,struct ec_param_codec_i2s*,struct ec_codec_i2s_gain*) ;

__attribute__((used)) static int get_ec_mic_gain(struct snd_soc_component *component,
      u8 *left, u8 *right)
{
 struct ec_param_codec_i2s param;
 struct ec_codec_i2s_gain resp;
 int ret;

 param.cmd = EC_CODEC_GET_GAIN;

 ret = ec_command_get_gain(component, &param, &resp);
 if (ret < 0)
  return ret;

 *left = resp.left;
 *right = resp.right;

 return 0;
}
