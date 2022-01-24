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
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int /*<<< orphan*/  qdisc; } ;
struct Qdisc {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  qdisc_sleeping; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct net_device*) ; 
 struct Qdisc* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct Qdisc *FUNC2(struct net_device *dev, u32 handle)
{
	struct Qdisc *q;

	if (!handle)
		return NULL;
	q = FUNC1(dev->qdisc, handle);
	if (q)
		goto out;

	if (FUNC0(dev))
		q = FUNC1(
			FUNC0(dev)->qdisc_sleeping,
			handle);
out:
	return q;
}