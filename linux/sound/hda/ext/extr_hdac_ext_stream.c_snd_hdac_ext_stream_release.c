
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int opened; struct hdac_bus* bus; } ;
struct hdac_ext_stream {int * link_substream; int link_locked; TYPE_1__ hstream; int decoupled; } ;
struct hdac_bus {int dev; int reg_lock; } ;





 int dev_dbg (int ,char*,int) ;
 int snd_hdac_ext_stream_decouple (struct hdac_bus*,struct hdac_ext_stream*,int) ;
 int snd_hdac_stream_release (TYPE_1__*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void snd_hdac_ext_stream_release(struct hdac_ext_stream *stream, int type)
{
 struct hdac_bus *bus = stream->hstream.bus;

 switch (type) {
 case 130:
  snd_hdac_stream_release(&stream->hstream);
  break;

 case 129:
  if (stream->decoupled && !stream->link_locked)
   snd_hdac_ext_stream_decouple(bus, stream, 0);
  snd_hdac_stream_release(&stream->hstream);
  break;

 case 128:
  if (stream->decoupled && !stream->hstream.opened)
   snd_hdac_ext_stream_decouple(bus, stream, 0);
  spin_lock_irq(&bus->reg_lock);
  stream->link_locked = 0;
  stream->link_substream = ((void*)0);
  spin_unlock_irq(&bus->reg_lock);
  break;

 default:
  dev_dbg(bus->dev, "Invalid type %d\n", type);
 }

}
