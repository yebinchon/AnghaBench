#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct usb_interface {int num_altsetting; int /*<<< orphan*/  dev; struct usb_host_interface* altsetting; } ;
struct TYPE_2__ {int bNumEndpoints; } ;
struct usb_host_interface {int extralen; int /*<<< orphan*/ * extra; TYPE_1__ desc; } ;
struct usb_descriptor_header {int dummy; } ;
typedef  struct uac_format_type_i_discrete_descriptor {int bLength; scalar_t__ bDescriptorType; scalar_t__ bDescriptorSubtype; scalar_t__ bFormatType; int bSamFreqType; } const uac_format_type_i_discrete_descriptor ;

/* Variables and functions */
 scalar_t__ UAC_FORMAT_TYPE ; 
 int FUNC0 (int) ; 
 scalar_t__ UAC_FORMAT_TYPE_I_PCM ; 
 scalar_t__ USB_DT_CS_INTERFACE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static const struct uac_format_type_i_discrete_descriptor *
FUNC2(struct usb_interface *interface)
{
	struct usb_host_interface *alt;
	u8 *extra;
	int extralen;

	if (interface->num_altsetting != 2) {
		FUNC1(&interface->dev, "invalid num_altsetting\n");
		return NULL;
	}

	alt = &interface->altsetting[0];
	if (alt->desc.bNumEndpoints != 0) {
		FUNC1(&interface->dev, "invalid bNumEndpoints\n");
		return NULL;
	}

	alt = &interface->altsetting[1];
	if (alt->desc.bNumEndpoints != 1) {
		FUNC1(&interface->dev, "invalid bNumEndpoints\n");
		return NULL;
	}

	extra = alt->extra;
	extralen = alt->extralen;
	while (extralen >= sizeof(struct usb_descriptor_header)) {
		struct uac_format_type_i_discrete_descriptor *desc;

		desc = (struct uac_format_type_i_discrete_descriptor *)extra;
		if (desc->bLength > extralen) {
			FUNC1(&interface->dev, "descriptor overflow\n");
			return NULL;
		}
		if (desc->bLength == FUNC0(1) &&
		    desc->bDescriptorType == USB_DT_CS_INTERFACE &&
		    desc->bDescriptorSubtype == UAC_FORMAT_TYPE) {
			if (desc->bFormatType != UAC_FORMAT_TYPE_I_PCM ||
			    desc->bSamFreqType != 1) {
				FUNC1(&interface->dev,
					"invalid format type\n");
				return NULL;
			}
			return desc;
		}
		extralen -= desc->bLength;
		extra += desc->bLength;
	}
	FUNC1(&interface->dev, "sample format descriptor not found\n");
	return NULL;
}