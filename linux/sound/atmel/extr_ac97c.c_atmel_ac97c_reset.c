
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_ac97c {int reset_pin; } ;


 int AC97C_MR_ENA ;
 int AC97C_MR_WRST ;
 int CAMR ;
 int COMR ;
 int IS_ERR (int ) ;
 int MR ;
 int ac97c_writel (struct atmel_ac97c*,int ,int) ;
 int gpiod_set_value (int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void atmel_ac97c_reset(struct atmel_ac97c *chip)
{
 ac97c_writel(chip, MR, 0);
 ac97c_writel(chip, MR, AC97C_MR_ENA);
 ac97c_writel(chip, CAMR, 0);
 ac97c_writel(chip, COMR, 0);

 if (!IS_ERR(chip->reset_pin)) {
  gpiod_set_value(chip->reset_pin, 0);

  udelay(2);
  gpiod_set_value(chip->reset_pin, 1);
 } else {
  ac97c_writel(chip, MR, AC97C_MR_WRST | AC97C_MR_ENA);
  udelay(2);
  ac97c_writel(chip, MR, AC97C_MR_ENA);
 }
}
