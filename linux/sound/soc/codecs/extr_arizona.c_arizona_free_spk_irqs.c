
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arizona {int dummy; } ;


 int ARIZONA_IRQ_SPK_OVERHEAT ;
 int ARIZONA_IRQ_SPK_OVERHEAT_WARN ;
 int arizona_free_irq (struct arizona*,int ,struct arizona*) ;

int arizona_free_spk_irqs(struct arizona *arizona)
{
 arizona_free_irq(arizona, ARIZONA_IRQ_SPK_OVERHEAT_WARN, arizona);
 arizona_free_irq(arizona, ARIZONA_IRQ_SPK_OVERHEAT, arizona);

 return 0;
}
