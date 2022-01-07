
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_ac97 {int dummy; } ;
struct pinctrl {int dummy; } ;
struct TYPE_2__ {int pstate_run; int gpio_reset; int gpio_sdata; int gpio_sync; int pstate_reset; struct pinctrl* pctl; } ;


 int gpio_direction_output (int ,int) ;
 int msleep (int) ;
 int pinctrl_select_state (struct pinctrl*,int ) ;
 TYPE_1__ snd_ac97_rst_cfg ;
 int udelay (int) ;

__attribute__((used)) static void snd_soc_ac97_reset(struct snd_ac97 *ac97)
{
 struct pinctrl *pctl = snd_ac97_rst_cfg.pctl;

 pinctrl_select_state(pctl, snd_ac97_rst_cfg.pstate_reset);

 gpio_direction_output(snd_ac97_rst_cfg.gpio_sync, 0);
 gpio_direction_output(snd_ac97_rst_cfg.gpio_sdata, 0);
 gpio_direction_output(snd_ac97_rst_cfg.gpio_reset, 0);

 udelay(10);

 gpio_direction_output(snd_ac97_rst_cfg.gpio_reset, 1);

 pinctrl_select_state(pctl, snd_ac97_rst_cfg.pstate_run);
 msleep(2);
}
