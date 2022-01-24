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
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct lapb_cb {scalar_t__ state; int /*<<< orphan*/  write_queue; } ;

/* Variables and functions */
 int LAPB_BADTOKEN ; 
 int LAPB_NOTCONNECTED ; 
 int LAPB_OK ; 
 scalar_t__ LAPB_STATE_3 ; 
 scalar_t__ LAPB_STATE_4 ; 
 struct lapb_cb* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct lapb_cb*) ; 
 int /*<<< orphan*/  FUNC2 (struct lapb_cb*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sk_buff*) ; 

int FUNC4(struct net_device *dev, struct sk_buff *skb)
{
	struct lapb_cb *lapb = FUNC0(dev);
	int rc = LAPB_BADTOKEN;

	if (!lapb)
		goto out;

	rc = LAPB_NOTCONNECTED;
	if (lapb->state != LAPB_STATE_3 && lapb->state != LAPB_STATE_4)
		goto out_put;

	FUNC3(&lapb->write_queue, skb);
	FUNC1(lapb);
	rc = LAPB_OK;
out_put:
	FUNC2(lapb);
out:
	return rc;
}