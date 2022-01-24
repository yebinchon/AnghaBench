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
struct usb_host_interface {int dummy; } ;
struct snd_usb_audio {int /*<<< orphan*/  dev; } ;
struct audioformat {int iface; int altsetting; int altset_idx; int protocol; int maxpacksize; int channels; int clock; int /*<<< orphan*/  list; int /*<<< orphan*/  datainterval; int /*<<< orphan*/  ep_attr; int /*<<< orphan*/  endpoint; } ;
struct TYPE_2__ {int /*<<< orphan*/  wMaxPacketSize; int /*<<< orphan*/  bmAttributes; int /*<<< orphan*/  bEndpointAddress; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ USB_SPEED_HIGH ; 
 TYPE_1__* FUNC1 (struct usb_host_interface*,int /*<<< orphan*/ ) ; 
 struct audioformat* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_usb_audio*,struct usb_host_interface*) ; 

__attribute__((used)) static struct audioformat *
FUNC6(struct snd_usb_audio *chip,
		       struct usb_host_interface *alts,
		       int protocol, int iface_no, int altset_idx,
		       int altno, int num_channels, int clock)
{
	struct audioformat *fp;

	fp = FUNC2(sizeof(*fp), GFP_KERNEL);
	if (!fp)
		return NULL;

	fp->iface = iface_no;
	fp->altsetting = altno;
	fp->altset_idx = altset_idx;
	fp->endpoint = FUNC1(alts, 0)->bEndpointAddress;
	fp->ep_attr = FUNC1(alts, 0)->bmAttributes;
	fp->datainterval = FUNC5(chip, alts);
	fp->protocol = protocol;
	fp->maxpacksize = FUNC3(FUNC1(alts, 0)->wMaxPacketSize);
	fp->channels = num_channels;
	if (FUNC4(chip->dev) == USB_SPEED_HIGH)
		fp->maxpacksize = (((fp->maxpacksize >> 11) & 3) + 1)
				* (fp->maxpacksize & 0x7ff);
	fp->clock = clock;
	FUNC0(&fp->list);

	return fp;
}