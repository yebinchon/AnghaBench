
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * shared_ch_mapping; int data_format; int num_channels; int bit_width; int sample_rate; int sb_cfg_minor_version; } ;
union afe_port_config {TYPE_1__ slim_cfg; } ;
struct q6afe_slim_cfg {int * ch_mapping; int data_format; int num_channels; int bit_width; int sample_rate; } ;
struct q6afe_port {union afe_port_config port_cfg; } ;


 int AFE_API_VERSION_SLIMBUS_CONFIG ;

void q6afe_slim_port_prepare(struct q6afe_port *port,
        struct q6afe_slim_cfg *cfg)
{
 union afe_port_config *pcfg = &port->port_cfg;

 pcfg->slim_cfg.sb_cfg_minor_version = AFE_API_VERSION_SLIMBUS_CONFIG;
 pcfg->slim_cfg.sample_rate = cfg->sample_rate;
 pcfg->slim_cfg.bit_width = cfg->bit_width;
 pcfg->slim_cfg.num_channels = cfg->num_channels;
 pcfg->slim_cfg.data_format = cfg->data_format;
 pcfg->slim_cfg.shared_ch_mapping[0] = cfg->ch_mapping[0];
 pcfg->slim_cfg.shared_ch_mapping[1] = cfg->ch_mapping[1];
 pcfg->slim_cfg.shared_ch_mapping[2] = cfg->ch_mapping[2];
 pcfg->slim_cfg.shared_ch_mapping[3] = cfg->ch_mapping[3];

}
