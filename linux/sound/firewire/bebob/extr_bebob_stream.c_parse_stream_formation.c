
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_bebob_stream_formation {scalar_t__ pcm; scalar_t__ midi; } ;


 scalar_t__ AM824_MAX_CHANNELS_FOR_MIDI ;
 scalar_t__ AM824_MAX_CHANNELS_FOR_PCM ;
 unsigned int ARRAY_SIZE (int*) ;
 int ENOSYS ;
 int* bridgeco_freq_table ;
 int memset (struct snd_bebob_stream_formation*,int ,int) ;

__attribute__((used)) static int
parse_stream_formation(u8 *buf, unsigned int len,
         struct snd_bebob_stream_formation *formation)
{
 unsigned int i, e, channels, format;






 if ((buf[0] != 0x90) || (buf[1] != 0x40))
  return -ENOSYS;


 for (i = 0; i < ARRAY_SIZE(bridgeco_freq_table); i++) {
  if (buf[2] == bridgeco_freq_table[i])
   break;
 }
 if (i == ARRAY_SIZE(bridgeco_freq_table))
  return -ENOSYS;


 memset(&formation[i], 0, sizeof(struct snd_bebob_stream_formation));

 for (e = 0; e < buf[4]; e++) {
  channels = buf[5 + e * 2];
  format = buf[6 + e * 2];

  switch (format) {

  case 0x00:

  case 0x06:
   formation[i].pcm += channels;
   break;

  case 0x0d:
   formation[i].midi += channels;
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

  case 0x40:

  case 0xff:
  default:
   return -ENOSYS;
  }
 }

 if (formation[i].pcm > AM824_MAX_CHANNELS_FOR_PCM ||
     formation[i].midi > AM824_MAX_CHANNELS_FOR_MIDI)
  return -ENOSYS;

 return 0;
}
