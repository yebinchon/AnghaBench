
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int channel_mode; int mono_stereo; int ws_src; int data_format; int bit_width; int sample_rate; int i2s_cfg_minor_version; } ;
union afe_port_config {TYPE_2__ i2s_cfg; } ;
struct q6afe_port {TYPE_1__* afe; union afe_port_config port_cfg; } ;
struct q6afe_i2s_cfg {int fmt; int num_channels; int sd_line_mask; int bit_width; int sample_rate; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device* dev; } ;


 int AFE_API_VERSION_I2S_CONFIG ;
 int AFE_LINEAR_PCM_DATA ;
 int AFE_PORT_CONFIG_I2S_WS_SRC_EXTERNAL ;
 int AFE_PORT_CONFIG_I2S_WS_SRC_INTERNAL ;


 int AFE_PORT_I2S_MONO ;


 void* AFE_PORT_I2S_SD0 ;




 int AFE_PORT_I2S_SD1 ;

 void* AFE_PORT_I2S_SD2 ;


 int AFE_PORT_I2S_SD3 ;

 int AFE_PORT_I2S_STEREO ;
 int EINVAL ;


 int SND_SOC_DAIFMT_MASTER_MASK ;
 int dev_err (struct device*,char*) ;
 int hweight_long (int ) ;

int q6afe_i2s_port_prepare(struct q6afe_port *port, struct q6afe_i2s_cfg *cfg)
{
 union afe_port_config *pcfg = &port->port_cfg;
 struct device *dev = port->afe->dev;
 int num_sd_lines;

 pcfg->i2s_cfg.i2s_cfg_minor_version = AFE_API_VERSION_I2S_CONFIG;
 pcfg->i2s_cfg.sample_rate = cfg->sample_rate;
 pcfg->i2s_cfg.bit_width = cfg->bit_width;
 pcfg->i2s_cfg.data_format = AFE_LINEAR_PCM_DATA;

 switch (cfg->fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 128:
  pcfg->i2s_cfg.ws_src = AFE_PORT_CONFIG_I2S_WS_SRC_INTERNAL;
  break;
 case 129:

  pcfg->i2s_cfg.ws_src = AFE_PORT_CONFIG_I2S_WS_SRC_EXTERNAL;
  break;
 default:
  break;
 }

 num_sd_lines = hweight_long(cfg->sd_line_mask);

 switch (num_sd_lines) {
 case 0:
  dev_err(dev, "no line is assigned\n");
  return -EINVAL;
 case 1:
  switch (cfg->sd_line_mask) {
  case 134:
   pcfg->i2s_cfg.channel_mode = AFE_PORT_I2S_SD0;
   break;
  case 133:
   pcfg->i2s_cfg.channel_mode = AFE_PORT_I2S_SD1;
   break;
  case 131:
   pcfg->i2s_cfg.channel_mode = AFE_PORT_I2S_SD2;
   break;
  case 130:
   pcfg->i2s_cfg.channel_mode = AFE_PORT_I2S_SD3;
   break;
  default:
   dev_err(dev, "Invalid SD lines\n");
   return -EINVAL;
  }
  break;
 case 2:
  switch (cfg->sd_line_mask) {
  case 135:
   pcfg->i2s_cfg.channel_mode = 139;
   break;
  case 132:
   pcfg->i2s_cfg.channel_mode = 138;
   break;
  default:
   dev_err(dev, "Invalid SD lines\n");
   return -EINVAL;
  }
  break;
 case 3:
  switch (cfg->sd_line_mask) {
  case 136:
   pcfg->i2s_cfg.channel_mode = 141;
   break;
  default:
   dev_err(dev, "Invalid SD lines\n");
   return -EINVAL;
  }
  break;
 case 4:
  switch (cfg->sd_line_mask) {
  case 137:
   pcfg->i2s_cfg.channel_mode = 140;

   break;
  default:
   dev_err(dev, "Invalid SD lines\n");
   return -EINVAL;
  }
  break;
 default:
  dev_err(dev, "Invalid SD lines\n");
  return -EINVAL;
 }

 switch (cfg->num_channels) {
 case 1:
 case 2:
  switch (pcfg->i2s_cfg.channel_mode) {
  case 139:
  case 141:
  case 140:
   pcfg->i2s_cfg.channel_mode = AFE_PORT_I2S_SD0;
   break;
  case 138:
    pcfg->i2s_cfg.channel_mode = AFE_PORT_I2S_SD2;
   break;
  }

  if (cfg->num_channels == 2)
   pcfg->i2s_cfg.mono_stereo = AFE_PORT_I2S_STEREO;
  else
   pcfg->i2s_cfg.mono_stereo = AFE_PORT_I2S_MONO;

  break;
 case 3:
 case 4:
  if (pcfg->i2s_cfg.channel_mode < 139) {
   dev_err(dev, "Invalid Channel mode\n");
   return -EINVAL;
  }
  break;
 case 5:
 case 6:
  if (pcfg->i2s_cfg.channel_mode < 141) {
   dev_err(dev, "Invalid Channel mode\n");
   return -EINVAL;
  }
  break;
 case 7:
 case 8:
  if (pcfg->i2s_cfg.channel_mode < 140) {
   dev_err(dev, "Invalid Channel mode\n");
   return -EINVAL;
  }
  break;
 default:
  break;
 }

 return 0;
}
