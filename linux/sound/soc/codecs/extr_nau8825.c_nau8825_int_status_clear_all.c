
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;


 int NAU8825_REG_DATA_LEN ;
 int NAU8825_REG_INT_CLR_KEY_STATUS ;
 int NAU8825_REG_IRQ_STATUS ;
 int regmap_read (struct regmap*,int ,int*) ;
 int regmap_write (struct regmap*,int ,int) ;

__attribute__((used)) static void nau8825_int_status_clear_all(struct regmap *regmap)
{
 int active_irq, clear_irq, i;




 regmap_read(regmap, NAU8825_REG_IRQ_STATUS, &active_irq);
 for (i = 0; i < NAU8825_REG_DATA_LEN; i++) {
  clear_irq = (0x1 << i);
  if (active_irq & clear_irq)
   regmap_write(regmap,
    NAU8825_REG_INT_CLR_KEY_STATUS, clear_irq);
 }
}
