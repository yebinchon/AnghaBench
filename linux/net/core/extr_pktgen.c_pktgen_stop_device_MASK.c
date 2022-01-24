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
struct pktgen_dev {int /*<<< orphan*/  stopped_at; int /*<<< orphan*/ * skb; scalar_t__ running; int /*<<< orphan*/  odevname; } ;
struct TYPE_2__ {int nr_frags; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pktgen_dev*,int) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct pktgen_dev *pkt_dev)
{
	int nr_frags = pkt_dev->skb ? FUNC4(pkt_dev->skb)->nr_frags : -1;

	if (!pkt_dev->running) {
		FUNC2("interface: %s is already stopped\n",
			pkt_dev->odevname);
		return -EINVAL;
	}

	pkt_dev->running = 0;
	FUNC0(pkt_dev->skb);
	pkt_dev->skb = NULL;
	pkt_dev->stopped_at = FUNC1();

	FUNC3(pkt_dev, nr_frags);

	return 0;
}