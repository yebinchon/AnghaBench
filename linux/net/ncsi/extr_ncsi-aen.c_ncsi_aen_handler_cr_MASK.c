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
struct ncsi_dev_priv {int /*<<< orphan*/  lock; int /*<<< orphan*/  channel_queue; } ;
struct ncsi_channel {scalar_t__ state; int /*<<< orphan*/  link; int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  channel; } ;
struct ncsi_aen_pkt_hdr {TYPE_1__ common; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ NCSI_CHANNEL_ACTIVE ; 
 scalar_t__ NCSI_CHANNEL_INACTIVE ; 
 scalar_t__ NCSI_CHANNEL_INVISIBLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ncsi_dev_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ncsi_channel**) ; 
 int FUNC3 (struct ncsi_dev_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct ncsi_channel*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct ncsi_dev_priv *ndp,
			       struct ncsi_aen_pkt_hdr *h)
{
	struct ncsi_channel *nc;
	unsigned long flags;

	/* Find the NCSI channel */
	FUNC2(ndp, h->common.channel, NULL, &nc);
	if (!nc)
		return -ENODEV;

	FUNC5(&nc->lock, flags);
	if (!FUNC1(&nc->link) ||
	    nc->state != NCSI_CHANNEL_ACTIVE) {
		FUNC6(&nc->lock, flags);
		return 0;
	}
	FUNC6(&nc->lock, flags);

	FUNC4(nc);
	FUNC5(&nc->lock, flags);
	nc->state = NCSI_CHANNEL_INVISIBLE;
	FUNC6(&nc->lock, flags);

	FUNC5(&ndp->lock, flags);
	nc->state = NCSI_CHANNEL_INACTIVE;
	FUNC0(&nc->link, &ndp->channel_queue);
	FUNC6(&ndp->lock, flags);

	return FUNC3(ndp);
}