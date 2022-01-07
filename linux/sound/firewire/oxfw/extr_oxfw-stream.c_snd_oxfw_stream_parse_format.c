
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_oxfw_stream_formation {scalar_t__ pcm; unsigned int midi; int rate; } ;


 scalar_t__ AM824_MAX_CHANNELS_FOR_MIDI ;
 scalar_t__ AM824_MAX_CHANNELS_FOR_PCM ;
 unsigned int ARRAY_SIZE (int*) ;
 int ENOSYS ;
 int* avc_stream_rate_table ;
 int memset (struct snd_oxfw_stream_formation*,int ,int) ;
 int * oxfw_rate_table ;

int snd_oxfw_stream_parse_format(u8 *format,
     struct snd_oxfw_stream_formation *formation)
{
 unsigned int i, e, channels, type;

 memset(formation, 0, sizeof(struct snd_oxfw_stream_formation));






 if ((format[0] != 0x90) || (format[1] != 0x40))
  return -ENOSYS;


 for (i = 0; i < ARRAY_SIZE(avc_stream_rate_table); i++) {
  if (format[2] == avc_stream_rate_table[i])
   break;
 }
 if (i == ARRAY_SIZE(avc_stream_rate_table))
  return -ENOSYS;

 formation->rate = oxfw_rate_table[i];

 for (e = 0; e < format[4]; e++) {
  channels = format[5 + e * 2];
  type = format[6 + e * 2];

  switch (type) {

  case 0x00:

  case 0x06:
   formation->pcm += channels;
   break;

  case 0x0d:
   formation->midi = channels;
   break;

  case 0x01:
  case 0x02:
  case 0x03:
  case 0x04:
  case 0x05:

  case 0x07:
  case 0x0c:

  case 0x08:
  case 0x09:
  case 0x0a:
  case 0x0b:

  case 0x0e:

  case 0x0f:

  case 0x10:

  case 0x40:

  case 0xff:
  default:
   return -ENOSYS;
  }
 }

 if (formation->pcm > AM824_MAX_CHANNELS_FOR_PCM ||
     formation->midi > AM824_MAX_CHANNELS_FOR_MIDI)
  return -ENOSYS;

 return 0;
}
