
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_uart16550 {scalar_t__ irq; int res_base; } ;


 int free_irq (scalar_t__,struct snd_uart16550*) ;
 int kfree (struct snd_uart16550*) ;
 int release_and_free_resource (int ) ;

__attribute__((used)) static int snd_uart16550_free(struct snd_uart16550 *uart)
{
 if (uart->irq >= 0)
  free_irq(uart->irq, uart);
 release_and_free_resource(uart->res_base);
 kfree(uart);
 return 0;
}
