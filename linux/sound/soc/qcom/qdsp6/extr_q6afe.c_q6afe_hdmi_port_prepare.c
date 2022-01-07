
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bit_width; int sample_rate; int channel_allocation; int datatype; int hdmi_cfg_minor_version; } ;
union afe_port_config {TYPE_1__ hdmi_multi_ch; } ;
struct q6afe_port {union afe_port_config port_cfg; } ;
struct q6afe_hdmi_cfg {int bit_width; int sample_rate; int channel_allocation; int datatype; } ;


 int AFE_API_VERSION_HDMI_CONFIG ;

void q6afe_hdmi_port_prepare(struct q6afe_port *port,
        struct q6afe_hdmi_cfg *cfg)
{
 union afe_port_config *pcfg = &port->port_cfg;

 pcfg->hdmi_multi_ch.hdmi_cfg_minor_version =
     AFE_API_VERSION_HDMI_CONFIG;
 pcfg->hdmi_multi_ch.datatype = cfg->datatype;
 pcfg->hdmi_multi_ch.channel_allocation = cfg->channel_allocation;
 pcfg->hdmi_multi_ch.sample_rate = cfg->sample_rate;
 pcfg->hdmi_multi_ch.bit_width = cfg->bit_width;
}
