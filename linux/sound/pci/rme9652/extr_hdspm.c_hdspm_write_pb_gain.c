
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct hdspm {TYPE_2__* mixer; } ;
struct TYPE_4__ {TYPE_1__* ch; } ;
struct TYPE_3__ {unsigned short* pb; } ;


 scalar_t__ HDSPM_MADI_mixerBase ;
 unsigned int HDSPM_MIXER_CHANNELS ;
 int hdspm_write (struct hdspm*,scalar_t__,unsigned short) ;

__attribute__((used)) static int hdspm_write_pb_gain(struct hdspm *hdspm, unsigned int chan,
          unsigned int pb, unsigned short data)
{
 if (chan >= HDSPM_MIXER_CHANNELS || pb >= HDSPM_MIXER_CHANNELS)
  return -1;

 hdspm_write(hdspm,
      HDSPM_MADI_mixerBase +
      ((64 + pb + 128 * chan) * sizeof(u32)),
      (hdspm->mixer->ch[chan].pb[pb] = data & 0xFFFF));
 return 0;
}
