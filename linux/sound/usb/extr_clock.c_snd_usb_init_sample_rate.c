
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_host_interface {int dummy; } ;
struct snd_usb_audio {int badd_profile; } ;
struct audioformat {int protocol; } ;


 int ENXIO ;
 int UAC3_BADD_SAMPLING_RATE ;
 int UAC3_FUNCTION_SUBCLASS_GENERIC_IO ;



 int set_sample_rate_v1 (struct snd_usb_audio*,int,struct usb_host_interface*,struct audioformat*,int) ;
 int set_sample_rate_v2v3 (struct snd_usb_audio*,int,struct usb_host_interface*,struct audioformat*,int) ;

int snd_usb_init_sample_rate(struct snd_usb_audio *chip, int iface,
        struct usb_host_interface *alts,
        struct audioformat *fmt, int rate)
{
 switch (fmt->protocol) {
 case 130:
 default:
  return set_sample_rate_v1(chip, iface, alts, fmt, rate);

 case 128:
  if (chip->badd_profile >= UAC3_FUNCTION_SUBCLASS_GENERIC_IO) {
   if (rate != UAC3_BADD_SAMPLING_RATE)
    return -ENXIO;
   else
    return 0;
  }

 case 129:
  return set_sample_rate_v2v3(chip, iface, alts, fmt, rate);
 }
}
