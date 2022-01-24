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
struct urb {int /*<<< orphan*/  context; } ;
struct snd_usb_endpoint {int use_count; unsigned int nurbs; scalar_t__ flags; scalar_t__ active_mask; TYPE_1__* chip; int /*<<< orphan*/  pipe; struct snd_urb_ctx* urb; int /*<<< orphan*/  ready_playback_urbs; scalar_t__ phase; scalar_t__ unlink_mask; } ;
struct snd_urb_ctx {struct urb* urb; int /*<<< orphan*/  ready_list; } ;
struct TYPE_2__ {int /*<<< orphan*/  shutdown; } ;

/* Variables and functions */
 int EBADFD ; 
 int EPIPE ; 
 unsigned int EP_FLAG_RUNNING ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_usb_endpoint*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_usb_endpoint*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_usb_endpoint*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,scalar_t__*) ; 
 scalar_t__ FUNC7 (int) ; 
 scalar_t__ FUNC8 (struct snd_usb_endpoint*) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_usb_endpoint*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char*,unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (struct urb*,int /*<<< orphan*/ ) ; 

int FUNC14(struct snd_usb_endpoint *ep)
{
	int err;
	unsigned int i;

	if (FUNC0(&ep->chip->shutdown))
		return -EBADFD;

	/* already running? */
	if (++ep->use_count != 1)
		return 0;

	/* just to be sure */
	FUNC2(ep, false);

	ep->active_mask = 0;
	ep->unlink_mask = 0;
	ep->phase = 0;

	FUNC9(ep);

	/*
	 * If this endpoint has a data endpoint as implicit feedback source,
	 * don't start the urbs here. Instead, mark them all as available,
	 * wait for the record urbs to return and queue the playback urbs
	 * from that context.
	 */

	FUNC6(EP_FLAG_RUNNING, &ep->flags);

	if (FUNC8(ep)) {
		for (i = 0; i < ep->nurbs; i++) {
			struct snd_urb_ctx *ctx = ep->urb + i;
			FUNC3(&ctx->ready_list, &ep->ready_playback_urbs);
		}

		return 0;
	}

	for (i = 0; i < ep->nurbs; i++) {
		struct urb *urb = ep->urb[i].urb;

		if (FUNC7(!urb))
			goto __error;

		if (FUNC12(ep->pipe)) {
			FUNC5(ep, urb->context);
		} else {
			FUNC4(ep, urb->context);
		}

		err = FUNC13(urb, GFP_ATOMIC);
		if (err < 0) {
			FUNC10(ep->chip,
				"cannot submit urb %d, error %d: %s\n",
				i, err, FUNC11(err));
			goto __error;
		}
		FUNC6(i, &ep->active_mask);
	}

	return 0;

__error:
	FUNC1(EP_FLAG_RUNNING, &ep->flags);
	ep->use_count--;
	FUNC2(ep, false);
	return -EPIPE;
}