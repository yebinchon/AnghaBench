
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt5677_priv {int irq_lock; int irq_en; int regmap; } ;
struct irq_data {int dummy; } ;


 int RT5677_EN_IRQ_GPIO_JD1 ;
 int RT5677_EN_IRQ_GPIO_JD2 ;
 int RT5677_EN_IRQ_GPIO_JD3 ;
 int RT5677_IRQ_CTRL1 ;
 struct rt5677_priv* irq_data_get_irq_chip_data (struct irq_data*) ;
 int mutex_unlock (int *) ;
 int regmap_update_bits (int ,int ,int,int ) ;

__attribute__((used)) static void rt5677_irq_bus_sync_unlock(struct irq_data *data)
{
 struct rt5677_priv *rt5677 = irq_data_get_irq_chip_data(data);


 regmap_update_bits(rt5677->regmap, RT5677_IRQ_CTRL1,
   RT5677_EN_IRQ_GPIO_JD1 | RT5677_EN_IRQ_GPIO_JD2 |
   RT5677_EN_IRQ_GPIO_JD3, rt5677->irq_en);
 mutex_unlock(&rt5677->irq_lock);
}
