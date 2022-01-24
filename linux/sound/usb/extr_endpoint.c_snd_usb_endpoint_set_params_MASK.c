#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_usb_endpoint {scalar_t__ use_count; int fill_max; int type; int /*<<< orphan*/  nurbs; int /*<<< orphan*/  ep_num; TYPE_1__* chip; scalar_t__ phase; int /*<<< orphan*/  freqshift; int /*<<< orphan*/  freqn; int /*<<< orphan*/  freqm; int /*<<< orphan*/  maxpacksize; int /*<<< orphan*/  datainterval; } ;
struct audioformat {int attributes; int /*<<< orphan*/  maxpacksize; int /*<<< orphan*/  datainterval; } ;
typedef  int /*<<< orphan*/  snd_pcm_format_t ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  INT_MIN ; 
#define  SND_USB_ENDPOINT_TYPE_DATA 129 
#define  SND_USB_ENDPOINT_TYPE_SYNC 128 
 int UAC_EP_CS_ATTR_FILL_MAX ; 
 scalar_t__ USB_SPEED_FULL ; 
 int FUNC0 (struct snd_usb_endpoint*,int /*<<< orphan*/ ,unsigned int,unsigned int,unsigned int,unsigned int,struct audioformat*,struct snd_usb_endpoint*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_usb_endpoint*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct snd_usb_endpoint*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 

int FUNC8(struct snd_usb_endpoint *ep,
				snd_pcm_format_t pcm_format,
				unsigned int channels,
				unsigned int period_bytes,
				unsigned int period_frames,
				unsigned int buffer_periods,
				unsigned int rate,
				struct audioformat *fmt,
				struct snd_usb_endpoint *sync_ep)
{
	int err;

	if (ep->use_count != 0) {
		FUNC7(ep->chip,
			 "Unable to change format on ep #%x: already in use\n",
			 ep->ep_num);
		return -EBUSY;
	}

	/* release old buffers, if any */
	FUNC3(ep, 0);

	ep->datainterval = fmt->datainterval;
	ep->maxpacksize = fmt->maxpacksize;
	ep->fill_max = !!(fmt->attributes & UAC_EP_CS_ATTR_FILL_MAX);

	if (FUNC4(ep->chip->dev) == USB_SPEED_FULL)
		ep->freqn = FUNC1(rate);
	else
		ep->freqn = FUNC2(rate);

	/* calculate the frequency in 16.16 format */
	ep->freqm = ep->freqn;
	ep->freqshift = INT_MIN;

	ep->phase = 0;

	switch (ep->type) {
	case  SND_USB_ENDPOINT_TYPE_DATA:
		err = FUNC0(ep, pcm_format, channels,
					 period_bytes, period_frames,
					 buffer_periods, fmt, sync_ep);
		break;
	case  SND_USB_ENDPOINT_TYPE_SYNC:
		err = FUNC5(ep);
		break;
	default:
		err = -EINVAL;
	}

	FUNC6(ep->chip,
		"Setting params for ep #%x (type %d, %d urbs), ret=%d\n",
		ep->ep_num, ep->type, ep->nurbs, err);

	return err;
}