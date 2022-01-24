#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct urb {TYPE_2__* iso_frame_desc; int /*<<< orphan*/  transfer_buffer; int /*<<< orphan*/  complete; } ;
struct TYPE_7__ {unsigned int queue_length; unsigned int frame_bytes; TYPE_1__** urbs; } ;
struct ua101 {unsigned int rate_feedback_count; unsigned int* rate_feedback; size_t rate_feedback_start; TYPE_3__ playback; int /*<<< orphan*/  states; int /*<<< orphan*/  lock; int /*<<< orphan*/  rate_feedback_wait; int /*<<< orphan*/  ready_playback_urbs; int /*<<< orphan*/  playback_tasklet; } ;
struct TYPE_6__ {unsigned int length; } ;
struct TYPE_5__ {struct urb urb; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISCONNECTED ; 
 int EIO ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INTF_PLAYBACK ; 
 int /*<<< orphan*/  PLAYBACK_URB_COMPLETED ; 
 int /*<<< orphan*/  USB_CAPTURE_RUNNING ; 
 int /*<<< orphan*/  USB_PLAYBACK_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (struct ua101*,size_t*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct ua101*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  first_playback_urb_complete ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct ua101*) ; 
 int FUNC10 (struct ua101*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC14(struct ua101 *ua)
{
	unsigned int i, frames;
	struct urb *urb;
	int err = 0;

	if (FUNC12(DISCONNECTED, &ua->states))
		return -ENODEV;

	if (FUNC12(USB_PLAYBACK_RUNNING, &ua->states))
		return 0;

	FUNC4(&ua->playback);
	FUNC11(&ua->playback_tasklet);

	err = FUNC3(ua, INTF_PLAYBACK);
	if (err < 0)
		return err;

	FUNC2(PLAYBACK_URB_COMPLETED, &ua->states);
	ua->playback.urbs[0]->urb.complete =
		first_playback_urb_complete;
	FUNC7(&ua->lock);
	FUNC0(&ua->ready_playback_urbs);
	FUNC8(&ua->lock);

	/*
	 * We submit the initial URBs all at once, so we have to wait for the
	 * packet size FIFO to be full.
	 */
	FUNC13(ua->rate_feedback_wait,
		   ua->rate_feedback_count >= ua->playback.queue_length ||
		   !FUNC12(USB_CAPTURE_RUNNING, &ua->states) ||
		   FUNC12(DISCONNECTED, &ua->states));
	if (FUNC12(DISCONNECTED, &ua->states)) {
		FUNC9(ua);
		return -ENODEV;
	}
	if (!FUNC12(USB_CAPTURE_RUNNING, &ua->states)) {
		FUNC9(ua);
		return -EIO;
	}

	for (i = 0; i < ua->playback.queue_length; ++i) {
		/* all initial URBs contain silence */
		FUNC7(&ua->lock);
		frames = ua->rate_feedback[ua->rate_feedback_start];
		FUNC1(ua, &ua->rate_feedback_start, 1);
		ua->rate_feedback_count--;
		FUNC8(&ua->lock);
		urb = &ua->playback.urbs[i]->urb;
		urb->iso_frame_desc[0].length =
			frames * ua->playback.frame_bytes;
		FUNC5(urb->transfer_buffer, 0,
		       urb->iso_frame_desc[0].length);
	}

	FUNC6(USB_PLAYBACK_RUNNING, &ua->states);
	err = FUNC10(ua, &ua->playback);
	if (err < 0)
		FUNC9(ua);
	return err;
}