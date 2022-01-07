
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;


 int DA723X_CP_DIS ;
 int DA732X_CP_1MHZ ;
 int DA732X_CP_BOOST ;
 int DA732X_CP_CLK_DIS ;
 int DA732X_CP_CLK_EN ;
 int DA732X_CP_CTRL_CPVDD1 ;
 int DA732X_CP_EN ;
 int DA732X_CP_MANAGE_MAGNITUDE ;


 int DA732X_HP_CP_DIS ;
 int DA732X_HP_CP_EN ;
 int DA732X_HP_CP_PULSESKIP ;
 int DA732X_HP_CP_REG ;
 int DA732X_REG_CLK_EN2 ;
 int DA732X_REG_CP_CTRL1 ;
 int DA732X_REG_CP_CTRL2 ;
 int DA732X_REG_CP_CTRL3 ;
 int DA732X_REG_CP_HP2 ;
 int pr_err (char*) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static void da732x_set_charge_pump(struct snd_soc_component *component, int state)
{
 switch (state) {
 case 128:
  snd_soc_component_write(component, DA732X_REG_CLK_EN2, DA732X_CP_CLK_EN);
  snd_soc_component_write(component, DA732X_REG_CP_HP2, DA732X_HP_CP_EN |
         DA732X_HP_CP_REG | DA732X_HP_CP_PULSESKIP);
  snd_soc_component_write(component, DA732X_REG_CP_CTRL1, DA732X_CP_EN |
         DA732X_CP_CTRL_CPVDD1);
  snd_soc_component_write(component, DA732X_REG_CP_CTRL2,
         DA732X_CP_MANAGE_MAGNITUDE | DA732X_CP_BOOST);
  snd_soc_component_write(component, DA732X_REG_CP_CTRL3, DA732X_CP_1MHZ);
  break;
 case 129:
  snd_soc_component_write(component, DA732X_REG_CLK_EN2, DA732X_CP_CLK_DIS);
  snd_soc_component_write(component, DA732X_REG_CP_HP2, DA732X_HP_CP_DIS);
  snd_soc_component_write(component, DA732X_REG_CP_CTRL1, DA723X_CP_DIS);
  break;
 default:
  pr_err("Wrong charge pump state\n");
  break;
 }
}
