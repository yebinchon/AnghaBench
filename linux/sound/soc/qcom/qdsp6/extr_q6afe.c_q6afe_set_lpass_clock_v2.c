
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct q6afe_port {int dummy; } ;
struct afe_clk_set {int dummy; } ;


 int AFE_MODULE_CLOCK_SET ;
 int AFE_PARAM_ID_CLOCK_SET ;
 int q6afe_port_set_param (struct q6afe_port*,struct afe_clk_set*,int ,int ,int) ;

__attribute__((used)) static int q6afe_set_lpass_clock_v2(struct q6afe_port *port,
     struct afe_clk_set *cfg)
{
 return q6afe_port_set_param(port, cfg, AFE_PARAM_ID_CLOCK_SET,
        AFE_MODULE_CLOCK_SET, sizeof(*cfg));
}
