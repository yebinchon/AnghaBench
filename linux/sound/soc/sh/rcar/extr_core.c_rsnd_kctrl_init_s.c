
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsnd_kctrl_cfg {int * val; } ;
struct rsnd_kctrl_cfg_s {struct rsnd_kctrl_cfg cfg; int val; } ;



struct rsnd_kctrl_cfg *rsnd_kctrl_init_s(struct rsnd_kctrl_cfg_s *cfg)
{
 cfg->cfg.val = &cfg->val;

 return &cfg->cfg;
}
