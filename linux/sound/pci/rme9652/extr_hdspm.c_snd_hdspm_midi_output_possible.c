
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hdspm {TYPE_1__* midi; } ;
struct TYPE_2__ {int statusOut; } ;


 int hdspm_read (struct hdspm*,int ) ;

__attribute__((used)) static inline int snd_hdspm_midi_output_possible (struct hdspm *hdspm, int id)
{
 int fifo_bytes_used;

 fifo_bytes_used = hdspm_read(hdspm, hdspm->midi[id].statusOut) & 0xFF;

 if (fifo_bytes_used < 128)
  return 128 - fifo_bytes_used;
 else
  return 0;
}
