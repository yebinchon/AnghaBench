#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct urb {int transfer_buffer_length; } ;
struct snd_usb_substream {int last_delay; int last_frame_number; int /*<<< orphan*/  lock; TYPE_2__* dev; int /*<<< orphan*/  running; struct snd_usb_endpoint* data_endpoint; TYPE_1__* pcm_substream; } ;
struct snd_usb_endpoint {int stride; } ;
struct snd_pcm_runtime {int rate; int delay; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {struct snd_pcm_runtime* runtime; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,int) ; 
 int FUNC2 (struct snd_usb_substream*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC6(struct snd_usb_substream *subs,
			       struct urb *urb)
{
	unsigned long flags;
	struct snd_pcm_runtime *runtime = subs->pcm_substream->runtime;
	struct snd_usb_endpoint *ep = subs->data_endpoint;
	int processed = urb->transfer_buffer_length / ep->stride;
	int est_delay;

	/* ignore the delay accounting when procssed=0 is given, i.e.
	 * silent payloads are procssed before handling the actual data
	 */
	if (!processed)
		return;

	FUNC3(&subs->lock, flags);
	if (!subs->last_delay)
		goto out; /* short path */

	est_delay = FUNC2(subs, runtime->rate);
	/* update delay with exact number of samples played */
	if (processed > subs->last_delay)
		subs->last_delay = 0;
	else
		subs->last_delay -= processed;
	runtime->delay = subs->last_delay;

	/*
	 * Report when delay estimate is off by more than 2ms.
	 * The error should be lower than 2ms since the estimate relies
	 * on two reads of a counter updated every ms.
	 */
	if (FUNC0(est_delay - subs->last_delay) * 1000 > runtime->rate * 2)
		FUNC1(&subs->dev->dev,
			"delay: estimated %d, actual %d\n",
			est_delay, subs->last_delay);

	if (!subs->running) {
		/* update last_frame_number for delay counting here since
		 * prepare_playback_urb won't be called during pause
		 */
		subs->last_frame_number =
			FUNC5(subs->dev) & 0xff;
	}

 out:
	FUNC4(&subs->lock, flags);
}