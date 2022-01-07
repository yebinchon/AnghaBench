
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hdspm {TYPE_1__* midi; } ;
struct TYPE_2__ {int dataOut; } ;


 void hdspm_write (struct hdspm*,int ,int) ;

__attribute__((used)) static inline void snd_hdspm_midi_write_byte (struct hdspm *hdspm, int id,
           int val)
{

 return hdspm_write(hdspm, hdspm->midi[id].dataOut, val);
}
