
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_stream {int * substream; scalar_t__ running; scalar_t__ opened; struct hdac_bus* bus; } ;
struct hdac_bus {int reg_lock; } ;


 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void snd_hdac_stream_release(struct hdac_stream *azx_dev)
{
 struct hdac_bus *bus = azx_dev->bus;

 spin_lock_irq(&bus->reg_lock);
 azx_dev->opened = 0;
 azx_dev->running = 0;
 azx_dev->substream = ((void*)0);
 spin_unlock_irq(&bus->reg_lock);
}
