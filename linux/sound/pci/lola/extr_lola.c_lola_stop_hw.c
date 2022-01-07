
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lola {int dummy; } ;


 int lola_irq_disable (struct lola*) ;
 int stop_corb_rirb (struct lola*) ;

__attribute__((used)) static void lola_stop_hw(struct lola *chip)
{
 stop_corb_rirb(chip);
 lola_irq_disable(chip);
}
