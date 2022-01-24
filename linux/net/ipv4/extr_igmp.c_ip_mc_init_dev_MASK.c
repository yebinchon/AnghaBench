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
struct in_device {int /*<<< orphan*/  mc_tomb_lock; int /*<<< orphan*/  mr_ifc_timer; int /*<<< orphan*/  mr_gq_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  igmp_gq_timer_expire ; 
 int /*<<< orphan*/  igmp_ifc_timer_expire ; 
 int /*<<< orphan*/  FUNC1 (struct in_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct in_device *in_dev)
{
	FUNC0();

#ifdef CONFIG_IP_MULTICAST
	timer_setup(&in_dev->mr_gq_timer, igmp_gq_timer_expire, 0);
	timer_setup(&in_dev->mr_ifc_timer, igmp_ifc_timer_expire, 0);
#endif
	FUNC1(in_dev);

	FUNC2(&in_dev->mc_tomb_lock);
}