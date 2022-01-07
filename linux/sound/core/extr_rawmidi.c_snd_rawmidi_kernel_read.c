
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rawmidi_substream {int dummy; } ;


 int snd_rawmidi_input_trigger (struct snd_rawmidi_substream*,int) ;
 long snd_rawmidi_kernel_read1 (struct snd_rawmidi_substream*,int *,unsigned char*,long) ;

long snd_rawmidi_kernel_read(struct snd_rawmidi_substream *substream,
        unsigned char *buf, long count)
{
 snd_rawmidi_input_trigger(substream, 1);
 return snd_rawmidi_kernel_read1(substream, ((void*)0) , buf, count);
}
