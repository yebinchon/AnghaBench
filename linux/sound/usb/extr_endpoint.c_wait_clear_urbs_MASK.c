#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct snd_usb_endpoint {int /*<<< orphan*/ * prepare_data_urb; int /*<<< orphan*/ * retire_data_urb; int /*<<< orphan*/ * sync_slave; int /*<<< orphan*/ * data_subs; int /*<<< orphan*/  flags; int /*<<< orphan*/  ep_num; int /*<<< orphan*/  chip; int /*<<< orphan*/  nurbs; int /*<<< orphan*/  active_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  EP_FLAG_STOPPING ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 unsigned long jiffies ; 
 unsigned long FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct snd_usb_endpoint *ep)
{
	unsigned long end_time = jiffies + FUNC2(1000);
	int alive;

	do {
		alive = FUNC0(&ep->active_mask, ep->nurbs);
		if (!alive)
			break;

		FUNC3(1);
	} while (FUNC4(jiffies, end_time));

	if (alive)
		FUNC5(ep->chip,
			"timeout: still %d active urbs on EP #%x\n",
			alive, ep->ep_num);
	FUNC1(EP_FLAG_STOPPING, &ep->flags);

	ep->data_subs = NULL;
	ep->sync_slave = NULL;
	ep->retire_data_urb = NULL;
	ep->prepare_data_urb = NULL;

	return 0;
}