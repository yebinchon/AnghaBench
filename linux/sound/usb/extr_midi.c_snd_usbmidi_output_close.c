
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rawmidi_substream {int dummy; } ;


 int substream_open (struct snd_rawmidi_substream*,int ,int ) ;

__attribute__((used)) static int snd_usbmidi_output_close(struct snd_rawmidi_substream *substream)
{
 return substream_open(substream, 0, 0);
}
