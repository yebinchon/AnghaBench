
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct hdac_device {int dev; } ;
typedef int hda_nid_t ;
struct TYPE_2__ {int alsa_bits; } ;


 unsigned int AC_PAR_PCM_RATE_BITS ;
 unsigned int AC_SUPFMT_AC3 ;
 unsigned int AC_SUPFMT_FLOAT32 ;
 unsigned int AC_SUPFMT_PCM ;
 unsigned int AC_SUPPCM_BITS_16 ;
 unsigned int AC_SUPPCM_BITS_20 ;
 unsigned int AC_SUPPCM_BITS_24 ;
 unsigned int AC_SUPPCM_BITS_32 ;
 unsigned int AC_SUPPCM_BITS_8 ;
 unsigned int AC_WCAP_DIGITAL ;
 unsigned int AC_WCAP_FORMAT_OVRD ;
 int EIO ;
 int SNDRV_PCM_FMTBIT_FLOAT_LE ;
 int SNDRV_PCM_FMTBIT_IEC958_SUBFRAME_LE ;
 int SNDRV_PCM_FMTBIT_S16_LE ;
 int SNDRV_PCM_FMTBIT_S32_LE ;
 int SNDRV_PCM_FMTBIT_U8 ;
 int dev_err (int *,char*,int ,unsigned int,int,...) ;
 unsigned int get_wcaps (struct hdac_device*,int ) ;
 unsigned int query_pcm_param (struct hdac_device*,int ) ;
 unsigned int query_stream_param (struct hdac_device*,int ) ;
 TYPE_1__* rate_bits ;

int snd_hdac_query_supported_pcm(struct hdac_device *codec, hda_nid_t nid,
     u32 *ratesp, u64 *formatsp, unsigned int *bpsp)
{
 unsigned int i, val, wcaps;

 wcaps = get_wcaps(codec, nid);
 val = query_pcm_param(codec, nid);

 if (ratesp) {
  u32 rates = 0;
  for (i = 0; i < AC_PAR_PCM_RATE_BITS; i++) {
   if (val & (1 << i))
    rates |= rate_bits[i].alsa_bits;
  }
  if (rates == 0) {
   dev_err(&codec->dev,
    "rates == 0 (nid=0x%x, val=0x%x, ovrd=%i)\n",
    nid, val,
    (wcaps & AC_WCAP_FORMAT_OVRD) ? 1 : 0);
   return -EIO;
  }
  *ratesp = rates;
 }

 if (formatsp || bpsp) {
  u64 formats = 0;
  unsigned int streams, bps;

  streams = query_stream_param(codec, nid);
  if (!streams)
   return -EIO;

  bps = 0;
  if (streams & AC_SUPFMT_PCM) {
   if (val & AC_SUPPCM_BITS_8) {
    formats |= SNDRV_PCM_FMTBIT_U8;
    bps = 8;
   }
   if (val & AC_SUPPCM_BITS_16) {
    formats |= SNDRV_PCM_FMTBIT_S16_LE;
    bps = 16;
   }
   if (wcaps & AC_WCAP_DIGITAL) {
    if (val & AC_SUPPCM_BITS_32)
     formats |= SNDRV_PCM_FMTBIT_IEC958_SUBFRAME_LE;
    if (val & (AC_SUPPCM_BITS_20|AC_SUPPCM_BITS_24))
     formats |= SNDRV_PCM_FMTBIT_S32_LE;
    if (val & AC_SUPPCM_BITS_24)
     bps = 24;
    else if (val & AC_SUPPCM_BITS_20)
     bps = 20;
   } else if (val & (AC_SUPPCM_BITS_20|AC_SUPPCM_BITS_24|
       AC_SUPPCM_BITS_32)) {
    formats |= SNDRV_PCM_FMTBIT_S32_LE;
    if (val & AC_SUPPCM_BITS_32)
     bps = 32;
    else if (val & AC_SUPPCM_BITS_24)
     bps = 24;
    else if (val & AC_SUPPCM_BITS_20)
     bps = 20;
   }
  }







  if (streams == AC_SUPFMT_AC3) {




   formats |= SNDRV_PCM_FMTBIT_U8;
   bps = 8;
  }
  if (formats == 0) {
   dev_err(&codec->dev,
    "formats == 0 (nid=0x%x, val=0x%x, ovrd=%i, streams=0x%x)\n",
    nid, val,
    (wcaps & AC_WCAP_FORMAT_OVRD) ? 1 : 0,
    streams);
   return -EIO;
  }
  if (formatsp)
   *formatsp = formats;
  if (bpsp)
   *bpsp = bps;
 }

 return 0;
}
