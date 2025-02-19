
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_ms_header_descriptor {int bLength; scalar_t__ bDescriptorType; scalar_t__ bDescriptorSubtype; } ;
struct usb_ms_endpoint_descriptor {int bLength; scalar_t__ bDescriptorType; scalar_t__ bDescriptorSubtype; int bNumEmbMIDIJack; } ;
struct usb_interface {int dummy; } ;
struct usb_host_interface {int extralen; TYPE_1__* endpoint; scalar_t__ extra; } ;
struct usb_driver {int dummy; } ;
struct snd_usb_audio {int dummy; } ;
struct TYPE_2__ {int extralen; scalar_t__ extra; } ;


 int ENODEV ;
 scalar_t__ UAC_MS_GENERAL ;
 scalar_t__ USB_DT_CS_ENDPOINT ;
 scalar_t__ USB_DT_CS_INTERFACE ;
 scalar_t__ USB_MS_HEADER ;
 int create_any_midi_quirk (struct snd_usb_audio*,struct usb_interface*,struct usb_driver*,int *) ;

__attribute__((used)) static int create_std_midi_quirk(struct snd_usb_audio *chip,
     struct usb_interface *iface,
     struct usb_driver *driver,
     struct usb_host_interface *alts)
{
 struct usb_ms_header_descriptor *mshd;
 struct usb_ms_endpoint_descriptor *msepd;


 mshd = (struct usb_ms_header_descriptor *)alts->extra;
 if (alts->extralen < 7 ||
     mshd->bLength < 7 ||
     mshd->bDescriptorType != USB_DT_CS_INTERFACE ||
     mshd->bDescriptorSubtype != USB_MS_HEADER)
  return -ENODEV;

 msepd = (struct usb_ms_endpoint_descriptor *)alts->endpoint[0].extra;
 if (alts->endpoint[0].extralen < 4 ||
     msepd->bLength < 4 ||
     msepd->bDescriptorType != USB_DT_CS_ENDPOINT ||
     msepd->bDescriptorSubtype != UAC_MS_GENERAL ||
     msepd->bNumEmbMIDIJack < 1 ||
     msepd->bNumEmbMIDIJack > 16)
  return -ENODEV;

 return create_any_midi_quirk(chip, iface, driver, ((void*)0));
}
