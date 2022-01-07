
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct uac_format_type_ii_ext_descriptor {int wSamplesPerFrame; int wMaxBitRate; } ;
struct uac_format_type_ii_discrete_descriptor {int wSamplesPerFrame; int wMaxBitRate; } ;
struct snd_usb_audio {int dummy; } ;
struct audioformat {int channels; int protocol; int frame_size; void* formats; int altsetting; int iface; } ;


 void* SNDRV_PCM_FMTBIT_MPEG ;
 void* SNDRV_PCM_FMTBIT_U8 ;




 int le16_to_cpu (int ) ;
 int parse_audio_format_rates_v1 (struct snd_usb_audio*,struct audioformat*,void*,int) ;
 int parse_audio_format_rates_v2v3 (struct snd_usb_audio*,struct audioformat*) ;
 int usb_audio_info (struct snd_usb_audio*,char*,int,int,...) ;

__attribute__((used)) static int parse_audio_format_ii(struct snd_usb_audio *chip,
     struct audioformat *fp,
     u64 format, void *_fmt)
{
 int brate, framesize, ret;

 switch (format) {
 case 131:


  fp->formats = SNDRV_PCM_FMTBIT_U8;
  break;
 case 130:
  fp->formats = SNDRV_PCM_FMTBIT_MPEG;
  break;
 default:
  usb_audio_info(chip,
    "%u:%d : unknown format tag %#llx is detected.  processed as MPEG.\n",
    fp->iface, fp->altsetting, format);
  fp->formats = SNDRV_PCM_FMTBIT_MPEG;
  break;
 }

 fp->channels = 1;

 switch (fp->protocol) {
 default:
 case 129: {
  struct uac_format_type_ii_discrete_descriptor *fmt = _fmt;
  brate = le16_to_cpu(fmt->wMaxBitRate);
  framesize = le16_to_cpu(fmt->wSamplesPerFrame);
  usb_audio_info(chip, "found format II with max.bitrate = %d, frame size=%d\n", brate, framesize);
  fp->frame_size = framesize;
  ret = parse_audio_format_rates_v1(chip, fp, _fmt, 8);
  break;
 }
 case 128: {
  struct uac_format_type_ii_ext_descriptor *fmt = _fmt;
  brate = le16_to_cpu(fmt->wMaxBitRate);
  framesize = le16_to_cpu(fmt->wSamplesPerFrame);
  usb_audio_info(chip, "found format II with max.bitrate = %d, frame size=%d\n", brate, framesize);
  fp->frame_size = framesize;
  ret = parse_audio_format_rates_v2v3(chip, fp);
  break;
 }
 }

 return ret;
}
