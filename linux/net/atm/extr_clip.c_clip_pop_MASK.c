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
struct sk_buff {struct net_device* dev; } ;
struct net_device {int dummy; } ;
struct clip_vcc {int /*<<< orphan*/  xoff; int /*<<< orphan*/  (* old_pop ) (struct atm_vcc*,struct sk_buff*) ;} ;
struct atm_vcc {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  xoff_lock; } ;

/* Variables and functions */
 struct clip_vcc* FUNC0 (struct atm_vcc*) ; 
 TYPE_1__* FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct atm_vcc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct atm_vcc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct atm_vcc*,struct sk_buff*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct atm_vcc *vcc, struct sk_buff *skb)
{
	struct clip_vcc *clip_vcc = FUNC0(vcc);
	struct net_device *dev = skb->dev;
	int old;
	unsigned long flags;

	FUNC4("(vcc %p)\n", vcc);
	clip_vcc->old_pop(vcc, skb);
	/* skb->dev == NULL in outbound ARP packets */
	if (!dev)
		return;
	FUNC5(&FUNC1(dev)->xoff_lock, flags);
	if (FUNC2(vcc, 0)) {
		old = FUNC8(&clip_vcc->xoff, 0);
		if (old)
			FUNC3(dev);
	}
	FUNC6(&FUNC1(dev)->xoff_lock, flags);
}