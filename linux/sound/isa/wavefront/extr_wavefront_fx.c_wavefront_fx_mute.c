
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fx_op; } ;
typedef TYPE_1__ snd_wavefront_t ;


 int outb (int,int ) ;
 int wavefront_fx_idle (TYPE_1__*) ;

__attribute__((used)) static void
wavefront_fx_mute (snd_wavefront_t *dev, int onoff)

{
 if (!wavefront_fx_idle(dev)) {
  return;
 }

 outb (onoff ? 0x02 : 0x00, dev->fx_op);
}
