
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct axg_pdm {TYPE_1__* cfg; int sysclk; } ;
struct TYPE_2__ {unsigned int sys_rate; } ;


 unsigned int PDM_CHAN_CTRL_POINTER_MAX ;
 int clk_set_rate (int ,unsigned int) ;

__attribute__((used)) static int axg_pdm_set_sysclk(struct axg_pdm *priv, unsigned int os,
         unsigned int rate)
{
 unsigned int sys_rate = os * 2 * rate * PDM_CHAN_CTRL_POINTER_MAX;






 if (sys_rate < priv->cfg->sys_rate)
  return clk_set_rate(priv->sysclk, sys_rate);

 return clk_set_rate(priv->sysclk, priv->cfg->sys_rate);
}
