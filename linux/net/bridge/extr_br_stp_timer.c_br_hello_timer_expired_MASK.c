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
struct timer_list {int dummy; } ;
struct net_bridge {scalar_t__ stp_enabled; int /*<<< orphan*/  lock; scalar_t__ hello_time; int /*<<< orphan*/  hello_timer; TYPE_1__* dev; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 scalar_t__ BR_KERNEL_STP ; 
 int IFF_UP ; 
 struct net_bridge* br ; 
 int /*<<< orphan*/  FUNC0 (struct net_bridge*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_bridge*,char*) ; 
 struct net_bridge* FUNC2 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hello_timer ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct timer_list *t)
{
	struct net_bridge *br = FUNC2(br, t, hello_timer);

	FUNC1(br, "hello timer expired\n");
	FUNC5(&br->lock);
	if (br->dev->flags & IFF_UP) {
		FUNC0(br);

		if (br->stp_enabled == BR_KERNEL_STP)
			FUNC3(&br->hello_timer,
				  FUNC4(jiffies + br->hello_time));
	}
	FUNC6(&br->lock);
}