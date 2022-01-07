
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int isvirtual; int virtual; void* input_mpu; void* output_mpu; } ;
struct TYPE_6__ {TYPE_1__ midi; } ;
struct TYPE_7__ {TYPE_2__ wavefront; } ;
typedef TYPE_3__ snd_wavefront_card_t ;


 void* internal_mpu ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
snd_wavefront_midi_enable_virtual (snd_wavefront_card_t *card)

{
 unsigned long flags;

 spin_lock_irqsave (&card->wavefront.midi.virtual, flags);
 card->wavefront.midi.isvirtual = 1;
 card->wavefront.midi.output_mpu = internal_mpu;
 card->wavefront.midi.input_mpu = internal_mpu;
 spin_unlock_irqrestore (&card->wavefront.midi.virtual, flags);
}
