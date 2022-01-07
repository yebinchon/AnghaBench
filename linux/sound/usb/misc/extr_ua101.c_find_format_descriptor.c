
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct usb_interface {int num_altsetting; int dev; struct usb_host_interface* altsetting; } ;
struct TYPE_2__ {int bNumEndpoints; } ;
struct usb_host_interface {int extralen; int * extra; TYPE_1__ desc; } ;
struct usb_descriptor_header {int dummy; } ;
typedef struct uac_format_type_i_discrete_descriptor {int bLength; scalar_t__ bDescriptorType; scalar_t__ bDescriptorSubtype; scalar_t__ bFormatType; int bSamFreqType; } const uac_format_type_i_discrete_descriptor ;


 scalar_t__ UAC_FORMAT_TYPE ;
 int UAC_FORMAT_TYPE_I_DISCRETE_DESC_SIZE (int) ;
 scalar_t__ UAC_FORMAT_TYPE_I_PCM ;
 scalar_t__ USB_DT_CS_INTERFACE ;
 int dev_err (int *,char*) ;

__attribute__((used)) static const struct uac_format_type_i_discrete_descriptor *
find_format_descriptor(struct usb_interface *interface)
{
 struct usb_host_interface *alt;
 u8 *extra;
 int extralen;

 if (interface->num_altsetting != 2) {
  dev_err(&interface->dev, "invalid num_altsetting\n");
  return ((void*)0);
 }

 alt = &interface->altsetting[0];
 if (alt->desc.bNumEndpoints != 0) {
  dev_err(&interface->dev, "invalid bNumEndpoints\n");
  return ((void*)0);
 }

 alt = &interface->altsetting[1];
 if (alt->desc.bNumEndpoints != 1) {
  dev_err(&interface->dev, "invalid bNumEndpoints\n");
  return ((void*)0);
 }

 extra = alt->extra;
 extralen = alt->extralen;
 while (extralen >= sizeof(struct usb_descriptor_header)) {
  struct uac_format_type_i_discrete_descriptor *desc;

  desc = (struct uac_format_type_i_discrete_descriptor *)extra;
  if (desc->bLength > extralen) {
   dev_err(&interface->dev, "descriptor overflow\n");
   return ((void*)0);
  }
  if (desc->bLength == UAC_FORMAT_TYPE_I_DISCRETE_DESC_SIZE(1) &&
      desc->bDescriptorType == USB_DT_CS_INTERFACE &&
      desc->bDescriptorSubtype == UAC_FORMAT_TYPE) {
   if (desc->bFormatType != UAC_FORMAT_TYPE_I_PCM ||
       desc->bSamFreqType != 1) {
    dev_err(&interface->dev,
     "invalid format type\n");
    return ((void*)0);
   }
   return desc;
  }
  extralen -= desc->bLength;
  extra += desc->bLength;
 }
 dev_err(&interface->dev, "sample format descriptor not found\n");
 return ((void*)0);
}
