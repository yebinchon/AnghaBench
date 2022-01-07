
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;


 int NAU8824_REG_CLEAR_INT_REG ;
 int NAU8824_REG_DATA_LEN ;
 int NAU8824_REG_IRQ ;
 int regmap_read (struct regmap*,int ,int*) ;
 int regmap_write (struct regmap*,int ,int) ;

__attribute__((used)) static void nau8824_int_status_clear_all(struct regmap *regmap)
{
 int active_irq, clear_irq, i;




 regmap_read(regmap, NAU8824_REG_IRQ, &active_irq);
 for (i = 0; i < NAU8824_REG_DATA_LEN; i++) {
  clear_irq = (0x1 << i);
  if (active_irq & clear_irq)
   regmap_write(regmap,
    NAU8824_REG_CLEAR_INT_REG, clear_irq);
 }
}
