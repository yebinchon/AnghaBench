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
struct tcf_mirred {int /*<<< orphan*/  tcfm_dev; int /*<<< orphan*/  tcfm_list; } ;
struct tc_action {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mirred_list_lock ; 
 struct net_device* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct tcf_mirred* FUNC5 (struct tc_action*) ; 

__attribute__((used)) static void FUNC6(struct tc_action *a)
{
	struct tcf_mirred *m = FUNC5(a);
	struct net_device *dev;

	FUNC3(&mirred_list_lock);
	FUNC1(&m->tcfm_list);
	FUNC4(&mirred_list_lock);

	/* last reference to action, no need to lock */
	dev = FUNC2(m->tcfm_dev, 1);
	if (dev)
		FUNC0(dev);
}