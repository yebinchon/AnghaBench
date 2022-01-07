
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsnd_kctrl_cfg {int val; } ;
struct rsnd_kctrl_cfg_m {struct rsnd_kctrl_cfg cfg; int val; } ;



struct rsnd_kctrl_cfg *rsnd_kctrl_init_m(struct rsnd_kctrl_cfg_m *cfg)
{
 cfg->cfg.val = cfg->val;

 return &cfg->cfg;
}
