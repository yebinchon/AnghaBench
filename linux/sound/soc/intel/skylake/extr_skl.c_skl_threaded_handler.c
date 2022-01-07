
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hdac_bus {int dummy; } ;
typedef int irqreturn_t ;


 int INTSTS ;
 int IRQ_HANDLED ;
 int skl_stream_update ;
 int snd_hdac_bus_handle_stream_irq (struct hdac_bus*,int ,int ) ;
 int snd_hdac_chip_readl (struct hdac_bus*,int ) ;

__attribute__((used)) static irqreturn_t skl_threaded_handler(int irq, void *dev_id)
{
 struct hdac_bus *bus = dev_id;
 u32 status;

 status = snd_hdac_chip_readl(bus, INTSTS);

 snd_hdac_bus_handle_stream_irq(bus, status, skl_stream_update);

 return IRQ_HANDLED;
}
