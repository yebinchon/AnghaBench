
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hdac_device {int dummy; } ;
typedef int hda_nid_t ;
struct TYPE_2__ {unsigned int hda_fmt; } ;


 int AC_PAR_PCM_RATE_BITS ;
 unsigned int AC_SUPFMT_PCM ;
 unsigned int AC_SUPPCM_BITS_16 ;
 unsigned int AC_SUPPCM_BITS_20 ;
 unsigned int AC_SUPPCM_BITS_24 ;
 unsigned int AC_SUPPCM_BITS_32 ;
 unsigned int AC_SUPPCM_BITS_8 ;
 unsigned int query_pcm_param (struct hdac_device*,int ) ;
 unsigned int query_stream_param (struct hdac_device*,int ) ;
 TYPE_1__* rate_bits ;

bool snd_hdac_is_supported_format(struct hdac_device *codec, hda_nid_t nid,
      unsigned int format)
{
 int i;
 unsigned int val = 0, rate, stream;

 val = query_pcm_param(codec, nid);
 if (!val)
  return 0;

 rate = format & 0xff00;
 for (i = 0; i < AC_PAR_PCM_RATE_BITS; i++)
  if (rate_bits[i].hda_fmt == rate) {
   if (val & (1 << i))
    break;
   return 0;
  }
 if (i >= AC_PAR_PCM_RATE_BITS)
  return 0;

 stream = query_stream_param(codec, nid);
 if (!stream)
  return 0;

 if (stream & AC_SUPFMT_PCM) {
  switch (format & 0xf0) {
  case 0x00:
   if (!(val & AC_SUPPCM_BITS_8))
    return 0;
   break;
  case 0x10:
   if (!(val & AC_SUPPCM_BITS_16))
    return 0;
   break;
  case 0x20:
   if (!(val & AC_SUPPCM_BITS_20))
    return 0;
   break;
  case 0x30:
   if (!(val & AC_SUPPCM_BITS_24))
    return 0;
   break;
  case 0x40:
   if (!(val & AC_SUPPCM_BITS_32))
    return 0;
   break;
  default:
   return 0;
  }
 } else {

 }

 return 1;
}
