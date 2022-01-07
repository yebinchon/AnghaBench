
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface_descriptor {int bNumEndpoints; int bAlternateSetting; } ;
struct usb_host_interface {int extralen; int extra; TYPE_1__* endpoint; } ;
struct uac_iso_endpoint_descriptor {int bLength; scalar_t__ bDescriptorSubtype; int bmAttributes; } ;
struct uac3_iso_endpoint_descriptor {int bLength; int bmControls; } ;
struct uac2_iso_endpoint_descriptor {int bLength; int bmControls; } ;
struct snd_usb_audio {int dummy; } ;
struct TYPE_2__ {int extralen; int extra; } ;


 int UAC2_CONTROL_PITCH ;
 int UAC_EP_CS_ATTR_FILL_MAX ;
 int UAC_EP_CS_ATTR_PITCH_CONTROL ;
 scalar_t__ UAC_EP_GENERAL ;
 int UAC_VERSION_1 ;
 int UAC_VERSION_2 ;
 int USB_DT_CS_ENDPOINT ;
 struct usb_interface_descriptor* get_iface_desc (struct usb_host_interface*) ;
 int le32_to_cpu (int ) ;
 struct uac_iso_endpoint_descriptor* snd_usb_find_desc (int ,int ,int *,int ) ;
 int usb_audio_warn (struct snd_usb_audio*,char*,int,int ) ;

__attribute__((used)) static int parse_uac_endpoint_attributes(struct snd_usb_audio *chip,
      struct usb_host_interface *alts,
      int protocol, int iface_no)
{


 struct uac_iso_endpoint_descriptor *csep;
 struct usb_interface_descriptor *altsd = get_iface_desc(alts);
 int attributes = 0;

 csep = snd_usb_find_desc(alts->endpoint[0].extra, alts->endpoint[0].extralen, ((void*)0), USB_DT_CS_ENDPOINT);


 if (!csep && altsd->bNumEndpoints >= 2)
  csep = snd_usb_find_desc(alts->endpoint[1].extra, alts->endpoint[1].extralen, ((void*)0), USB_DT_CS_ENDPOINT);






 if (!csep)
  csep = snd_usb_find_desc(alts->extra, alts->extralen, ((void*)0), USB_DT_CS_ENDPOINT);

 if (!csep || csep->bLength < 7 ||
     csep->bDescriptorSubtype != UAC_EP_GENERAL)
  goto error;

 if (protocol == UAC_VERSION_1) {
  attributes = csep->bmAttributes;
 } else if (protocol == UAC_VERSION_2) {
  struct uac2_iso_endpoint_descriptor *csep2 =
   (struct uac2_iso_endpoint_descriptor *) csep;

  if (csep2->bLength < sizeof(*csep2))
   goto error;
  attributes = csep->bmAttributes & UAC_EP_CS_ATTR_FILL_MAX;


  if (csep2->bmControls & UAC2_CONTROL_PITCH)
   attributes |= UAC_EP_CS_ATTR_PITCH_CONTROL;
 } else {
  struct uac3_iso_endpoint_descriptor *csep3 =
   (struct uac3_iso_endpoint_descriptor *) csep;

  if (csep3->bLength < sizeof(*csep3))
   goto error;

  if (le32_to_cpu(csep3->bmControls) & UAC2_CONTROL_PITCH)
   attributes |= UAC_EP_CS_ATTR_PITCH_CONTROL;
 }

 return attributes;

 error:
 usb_audio_warn(chip,
         "%u:%d : no or invalid class specific endpoint descriptor\n",
         iface_no, altsd->bAlternateSetting);
 return 0;
}
