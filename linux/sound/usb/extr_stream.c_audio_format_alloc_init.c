
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_host_interface {int dummy; } ;
struct snd_usb_audio {int dev; } ;
struct audioformat {int iface; int altsetting; int altset_idx; int protocol; int maxpacksize; int channels; int clock; int list; int datainterval; int ep_attr; int endpoint; } ;
struct TYPE_2__ {int wMaxPacketSize; int bmAttributes; int bEndpointAddress; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ USB_SPEED_HIGH ;
 TYPE_1__* get_endpoint (struct usb_host_interface*,int ) ;
 struct audioformat* kzalloc (int,int ) ;
 int le16_to_cpu (int ) ;
 scalar_t__ snd_usb_get_speed (int ) ;
 int snd_usb_parse_datainterval (struct snd_usb_audio*,struct usb_host_interface*) ;

__attribute__((used)) static struct audioformat *
audio_format_alloc_init(struct snd_usb_audio *chip,
         struct usb_host_interface *alts,
         int protocol, int iface_no, int altset_idx,
         int altno, int num_channels, int clock)
{
 struct audioformat *fp;

 fp = kzalloc(sizeof(*fp), GFP_KERNEL);
 if (!fp)
  return ((void*)0);

 fp->iface = iface_no;
 fp->altsetting = altno;
 fp->altset_idx = altset_idx;
 fp->endpoint = get_endpoint(alts, 0)->bEndpointAddress;
 fp->ep_attr = get_endpoint(alts, 0)->bmAttributes;
 fp->datainterval = snd_usb_parse_datainterval(chip, alts);
 fp->protocol = protocol;
 fp->maxpacksize = le16_to_cpu(get_endpoint(alts, 0)->wMaxPacketSize);
 fp->channels = num_channels;
 if (snd_usb_get_speed(chip->dev) == USB_SPEED_HIGH)
  fp->maxpacksize = (((fp->maxpacksize >> 11) & 3) + 1)
    * (fp->maxpacksize & 0x7ff);
 fp->clock = clock;
 INIT_LIST_HEAD(&fp->list);

 return fp;
}
