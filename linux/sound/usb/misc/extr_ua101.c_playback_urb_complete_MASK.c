#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct urb {int dummy; } ;
struct TYPE_9__ {TYPE_3__* iso_frame_desc; int /*<<< orphan*/  status; struct ua101* context; } ;
struct ua101_urb {TYPE_4__ urb; int /*<<< orphan*/  ready_list; } ;
struct TYPE_10__ {int frame_bytes; TYPE_2__* substream; } ;
struct ua101 {scalar_t__ rate_feedback_count; int /*<<< orphan*/  lock; TYPE_5__ playback; int /*<<< orphan*/  playback_tasklet; int /*<<< orphan*/  ready_playback_urbs; int /*<<< orphan*/  states; } ;
struct TYPE_8__ {int length; } ;
struct TYPE_7__ {TYPE_1__* runtime; } ;
struct TYPE_6__ {int delay; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECONNRESET ; 
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  ESHUTDOWN ; 
 int /*<<< orphan*/  USB_PLAYBACK_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct ua101*) ; 
 int /*<<< orphan*/  FUNC1 (struct ua101*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(struct urb *usb_urb)
{
	struct ua101_urb *urb = (struct ua101_urb *)usb_urb;
	struct ua101 *ua = urb->urb.context;
	unsigned long flags;

	if (FUNC7(urb->urb.status == -ENOENT ||	/* unlinked */
		     urb->urb.status == -ENODEV ||	/* device removed */
		     urb->urb.status == -ECONNRESET ||	/* unlinked */
		     urb->urb.status == -ESHUTDOWN)) {	/* device disabled */
		FUNC1(ua);
		FUNC0(ua);
		return;
	}

	if (FUNC6(USB_PLAYBACK_RUNNING, &ua->states)) {
		/* append URB to FIFO */
		FUNC3(&ua->lock, flags);
		FUNC2(&urb->ready_list, &ua->ready_playback_urbs);
		if (ua->rate_feedback_count > 0)
			FUNC5(&ua->playback_tasklet);
		ua->playback.substream->runtime->delay -=
				urb->urb.iso_frame_desc[0].length /
						ua->playback.frame_bytes;
		FUNC4(&ua->lock, flags);
	}
}