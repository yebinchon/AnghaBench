
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct q6afe_port {int dummy; } ;
struct afe_digital_clk_cfg {int dummy; } ;


 int AFE_MODULE_AUDIO_DEV_INTERFACE ;
 int AFE_PARAM_ID_INT_DIGITAL_CDC_CLK_CONFIG ;
 int q6afe_port_set_param_v2 (struct q6afe_port*,struct afe_digital_clk_cfg*,int ,int ,int) ;

__attribute__((used)) static int q6afe_set_digital_codec_core_clock(struct q6afe_port *port,
           struct afe_digital_clk_cfg *cfg)
{
 return q6afe_port_set_param_v2(port, cfg,
           AFE_PARAM_ID_INT_DIGITAL_CDC_CLK_CONFIG,
           AFE_MODULE_AUDIO_DEV_INTERFACE,
           sizeof(*cfg));
}
