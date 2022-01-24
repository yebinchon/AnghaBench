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
struct usb_device {int dummy; } ;
struct urb {unsigned int pipe; int interval; int /*<<< orphan*/  complete; struct snd_usX2Y_substream* context; int /*<<< orphan*/  number_of_packets; struct usb_device* dev; int /*<<< orphan*/ * transfer_buffer; } ;
struct snd_usX2Y_substream {int /*<<< orphan*/  maxpacksize; struct urb** urb; int /*<<< orphan*/ * tmpbuf; int /*<<< orphan*/  endpoint; TYPE_1__* usX2Y; } ;
struct TYPE_2__ {struct usb_device* dev; struct snd_usX2Y_substream** subs; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int NRURBS ; 
 size_t SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  i_usX2Y_subs_startup ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct snd_usX2Y_substream*) ; 
 struct urb* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct urb*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_device*,unsigned int,int) ; 
 unsigned int FUNC7 (struct usb_device*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC8 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct snd_usX2Y_substream *subs)
{
	int i;
	unsigned int pipe;
	int is_playback = subs == subs->usX2Y->subs[SNDRV_PCM_STREAM_PLAYBACK];
	struct usb_device *dev = subs->usX2Y->dev;

	pipe = is_playback ? FUNC8(dev, subs->endpoint) :
			FUNC7(dev, subs->endpoint);
	subs->maxpacksize = FUNC6(dev, pipe, is_playback);
	if (!subs->maxpacksize)
		return -EINVAL;

	if (is_playback && NULL == subs->tmpbuf) {	/* allocate a temporary buffer for playback */
		subs->tmpbuf = FUNC0(FUNC2(), subs->maxpacksize, GFP_KERNEL);
		if (!subs->tmpbuf)
			return -ENOMEM;
	}
	/* allocate and initialize data urbs */
	for (i = 0; i < NRURBS; i++) {
		struct urb **purb = subs->urb + i;
		if (*purb) {
			FUNC5(*purb);
			continue;
		}
		*purb = FUNC4(FUNC2(), GFP_KERNEL);
		if (NULL == *purb) {
			FUNC3(subs);
			return -ENOMEM;
		}
		if (!is_playback && !(*purb)->transfer_buffer) {
			/* allocate a capture buffer per urb */
			(*purb)->transfer_buffer =
				FUNC1(subs->maxpacksize,
					      FUNC2(), GFP_KERNEL);
			if (NULL == (*purb)->transfer_buffer) {
				FUNC3(subs);
				return -ENOMEM;
			}
		}
		(*purb)->dev = dev;
		(*purb)->pipe = pipe;
		(*purb)->number_of_packets = FUNC2();
		(*purb)->context = subs;
		(*purb)->interval = 1;
		(*purb)->complete = i_usX2Y_subs_startup;
	}
	return 0;
}