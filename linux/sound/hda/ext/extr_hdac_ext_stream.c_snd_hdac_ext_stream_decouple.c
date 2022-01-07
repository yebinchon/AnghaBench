
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hdac_stream {int index; } ;
struct hdac_ext_stream {int decoupled; struct hdac_stream hstream; } ;
struct hdac_bus {int reg_lock; scalar_t__ ppcap; } ;


 int AZX_PPCTL_PROCEN (int ) ;
 scalar_t__ AZX_REG_PP_PPCTL ;
 int readw (scalar_t__) ;
 int snd_hdac_updatel (scalar_t__,scalar_t__,int,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void snd_hdac_ext_stream_decouple(struct hdac_bus *bus,
    struct hdac_ext_stream *stream, bool decouple)
{
 struct hdac_stream *hstream = &stream->hstream;
 u32 val;
 int mask = AZX_PPCTL_PROCEN(hstream->index);

 spin_lock_irq(&bus->reg_lock);
 val = readw(bus->ppcap + AZX_REG_PP_PPCTL) & mask;

 if (decouple && !val)
  snd_hdac_updatel(bus->ppcap, AZX_REG_PP_PPCTL, mask, mask);
 else if (!decouple && val)
  snd_hdac_updatel(bus->ppcap, AZX_REG_PP_PPCTL, mask, 0);

 stream->decoupled = decouple;
 spin_unlock_irq(&bus->reg_lock);
}
