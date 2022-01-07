
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct snd_rawmidi_substream {int dummy; } ;
struct snd_ice1712 {int dummy; } ;


 int ICEREG1724 (struct snd_ice1712*,int ) ;
 int MPU_DATA ;
 int MPU_RXFIFO ;
 int SNDRV_RAWMIDI_STREAM_INPUT ;
 struct snd_rawmidi_substream* get_rawmidi_substream (struct snd_ice1712*,int ) ;
 void* inb (int ) ;
 int min (int,int) ;
 int snd_rawmidi_receive (struct snd_rawmidi_substream*,void**,int) ;

__attribute__((used)) static void vt1724_midi_read(struct snd_ice1712 *ice)
{
 struct snd_rawmidi_substream *s;
 int count, i;
 u8 buffer[32];

 s = get_rawmidi_substream(ice, SNDRV_RAWMIDI_STREAM_INPUT);
 count = inb(ICEREG1724(ice, MPU_RXFIFO));
 if (count > 0) {
  count = min(count, 32);
  for (i = 0; i < count; ++i)
   buffer[i] = inb(ICEREG1724(ice, MPU_DATA));
  snd_rawmidi_receive(s, buffer, count);
 }
}
