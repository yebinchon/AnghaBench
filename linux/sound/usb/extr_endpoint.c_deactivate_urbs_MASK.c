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
struct urb {int dummy; } ;
struct snd_usb_endpoint {unsigned int nurbs; TYPE_1__* urb; int /*<<< orphan*/  unlink_mask; int /*<<< orphan*/  active_mask; scalar_t__ next_packet_write_pos; scalar_t__ next_packet_read_pos; int /*<<< orphan*/  ready_playback_urbs; int /*<<< orphan*/  flags; TYPE_2__* chip; } ;
struct TYPE_4__ {int /*<<< orphan*/  shutdown; } ;
struct TYPE_3__ {struct urb* urb; } ;

/* Variables and functions */
 int EBADFD ; 
 int /*<<< orphan*/  EP_FLAG_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct urb*) ; 

__attribute__((used)) static int FUNC6(struct snd_usb_endpoint *ep, bool force)
{
	unsigned int i;

	if (!force && FUNC1(&ep->chip->shutdown)) /* to be sure... */
		return -EBADFD;

	FUNC2(EP_FLAG_RUNNING, &ep->flags);

	FUNC0(&ep->ready_playback_urbs);
	ep->next_packet_read_pos = 0;
	ep->next_packet_write_pos = 0;

	for (i = 0; i < ep->nurbs; i++) {
		if (FUNC4(i, &ep->active_mask)) {
			if (!FUNC3(i, &ep->unlink_mask)) {
				struct urb *u = ep->urb[i].urb;
				FUNC5(u);
			}
		}
	}

	return 0;
}