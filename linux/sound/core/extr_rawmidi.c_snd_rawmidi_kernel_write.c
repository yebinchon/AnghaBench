
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rawmidi_substream {int dummy; } ;


 long snd_rawmidi_kernel_write1 (struct snd_rawmidi_substream*,int *,unsigned char const*,long) ;

long snd_rawmidi_kernel_write(struct snd_rawmidi_substream *substream,
         const unsigned char *buf, long count)
{
 return snd_rawmidi_kernel_write1(substream, ((void*)0), buf, count);
}
