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
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct dsa_port {int /*<<< orphan*/  xmit_work; int /*<<< orphan*/  xmit_queue; } ;
struct TYPE_2__ {int deferred_xmit; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 struct dsa_port* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sk_buff*) ; 

void *FUNC4(struct sk_buff *skb, struct net_device *dev)
{
	struct dsa_port *dp = FUNC1(dev);

	FUNC0(skb)->deferred_xmit = true;

	FUNC3(&dp->xmit_queue, skb);
	FUNC2(&dp->xmit_work);
	return NULL;
}