
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hdspm {TYPE_1__* midi; } ;
struct TYPE_2__ {int dataIn; } ;


 unsigned char hdspm_read (struct hdspm*,int ) ;

__attribute__((used)) static inline unsigned char snd_hdspm_midi_read_byte (struct hdspm *hdspm,
            int id)
{

 return hdspm_read(hdspm, hdspm->midi[id].dataIn);
}
