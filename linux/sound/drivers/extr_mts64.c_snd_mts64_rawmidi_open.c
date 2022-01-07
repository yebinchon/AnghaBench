
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct mts64 {scalar_t__ open_count; } ;
struct TYPE_2__ {struct mts64* private_data; } ;


 int msleep (int) ;
 int mts64_device_open (struct mts64*) ;

__attribute__((used)) static int snd_mts64_rawmidi_open(struct snd_rawmidi_substream *substream)
{
 struct mts64 *mts = substream->rmidi->private_data;

 if (mts->open_count == 0) {



  mts64_device_open(mts);

  msleep(50);
 }
 ++(mts->open_count);

 return 0;
}
