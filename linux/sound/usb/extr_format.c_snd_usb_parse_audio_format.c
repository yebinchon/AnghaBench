
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct uac_format_type_i_continuous_descriptor {int bFormatType; } ;
struct snd_usb_audio {scalar_t__ usb_id; } ;
struct audioformat {int fmt_type; scalar_t__ rates; int altsetting; int iface; } ;


 int ENOTSUPP ;
 scalar_t__ SNDRV_PCM_RATE_48000 ;
 scalar_t__ SNDRV_PCM_RATE_96000 ;



 scalar_t__ USB_ID (int,int) ;
 int parse_audio_format_i (struct snd_usb_audio*,struct audioformat*,int ,struct uac_format_type_i_continuous_descriptor*) ;
 int parse_audio_format_ii (struct snd_usb_audio*,struct audioformat*,int ,struct uac_format_type_i_continuous_descriptor*) ;
 int usb_audio_info (struct snd_usb_audio*,char*,int ,int ,int) ;

int snd_usb_parse_audio_format(struct snd_usb_audio *chip,
          struct audioformat *fp, u64 format,
          struct uac_format_type_i_continuous_descriptor *fmt,
          int stream)
{
 int err;

 switch (fmt->bFormatType) {
 case 130:
 case 128:
  err = parse_audio_format_i(chip, fp, format, fmt);
  break;
 case 129:
  err = parse_audio_format_ii(chip, fp, format, fmt);
  break;
 default:
  usb_audio_info(chip,
    "%u:%d : format type %d is not supported yet\n",
    fp->iface, fp->altsetting,
    fmt->bFormatType);
  return -ENOTSUPP;
 }
 fp->fmt_type = fmt->bFormatType;
 if (err < 0)
  return err;





 if (chip->usb_id == USB_ID(0x041e, 0x3000) ||
     chip->usb_id == USB_ID(0x041e, 0x3020) ||
     chip->usb_id == USB_ID(0x041e, 0x3061)) {
  if (fmt->bFormatType == 130 &&
      fp->rates != SNDRV_PCM_RATE_48000 &&
      fp->rates != SNDRV_PCM_RATE_96000)
   return -ENOTSUPP;
 }

 return 0;
}
