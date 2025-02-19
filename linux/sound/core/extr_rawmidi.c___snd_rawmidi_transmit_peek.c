
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rawmidi_substream {int rmidi; struct snd_rawmidi_runtime* runtime; } ;
struct snd_rawmidi_runtime {unsigned char* buffer; int avail; int buffer_size; size_t hw_ptr; } ;


 int EINVAL ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int rmidi_dbg (int ,char*) ;

int __snd_rawmidi_transmit_peek(struct snd_rawmidi_substream *substream,
         unsigned char *buffer, int count)
{
 int result, count1;
 struct snd_rawmidi_runtime *runtime = substream->runtime;

 if (runtime->buffer == ((void*)0)) {
  rmidi_dbg(substream->rmidi,
     "snd_rawmidi_transmit_peek: output is not active!!!\n");
  return -EINVAL;
 }
 result = 0;
 if (runtime->avail >= runtime->buffer_size) {

  goto __skip;
 }
 if (count == 1) {
  *buffer = runtime->buffer[runtime->hw_ptr];
  result++;
 } else {
  count1 = runtime->buffer_size - runtime->hw_ptr;
  if (count1 > count)
   count1 = count;
  if (count1 > (int)(runtime->buffer_size - runtime->avail))
   count1 = runtime->buffer_size - runtime->avail;
  memcpy(buffer, runtime->buffer + runtime->hw_ptr, count1);
  count -= count1;
  result += count1;
  if (count > 0) {
   if (count > (int)(runtime->buffer_size - runtime->avail - count1))
    count = runtime->buffer_size - runtime->avail - count1;
   memcpy(buffer + count1, runtime->buffer, count);
   result += count;
  }
 }
      __skip:
 return result;
}
