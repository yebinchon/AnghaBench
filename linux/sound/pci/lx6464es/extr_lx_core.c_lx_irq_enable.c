
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lx6464es {TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int dev_dbg (int ,char*) ;
 int lx_irq_set (struct lx6464es*,int) ;

void lx_irq_enable(struct lx6464es *chip)
{
 dev_dbg(chip->card->dev, "->lx_irq_enable\n");
 lx_irq_set(chip, 1);
}
