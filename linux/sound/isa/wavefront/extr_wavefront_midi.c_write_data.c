
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mpu_data_port; } ;
typedef TYPE_1__ snd_wavefront_midi_t ;


 int outb (unsigned char,int ) ;

__attribute__((used)) static inline void
write_data (snd_wavefront_midi_t *midi, unsigned char byte)

{
 outb (byte, midi->mpu_data_port);
}
