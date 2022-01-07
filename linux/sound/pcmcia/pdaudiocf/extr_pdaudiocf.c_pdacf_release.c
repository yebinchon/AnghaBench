
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {int priv; int irq; } ;


 int free_irq (int ,int ) ;
 int pcmcia_disable_device (struct pcmcia_device*) ;

__attribute__((used)) static void pdacf_release(struct pcmcia_device *link)
{
 free_irq(link->irq, link->priv);
 pcmcia_disable_device(link);
}
