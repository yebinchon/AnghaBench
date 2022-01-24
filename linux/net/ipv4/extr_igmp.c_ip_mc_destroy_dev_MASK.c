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
struct ip_mc_list {int /*<<< orphan*/  next_rcu; } ;
struct in_device {int /*<<< orphan*/  mc_count; int /*<<< orphan*/  mc_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct in_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct ip_mc_list*) ; 
 int /*<<< orphan*/  FUNC3 (struct in_device*) ; 
 struct ip_mc_list* FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct in_device *in_dev)
{
	struct ip_mc_list *i;

	FUNC0();

	/* Deactivate timers */
	FUNC3(in_dev);
#ifdef CONFIG_IP_MULTICAST
	igmpv3_clear_delrec(in_dev);
#endif

	while ((i = FUNC4(in_dev->mc_list)) != NULL) {
		in_dev->mc_list = i->next_rcu;
		in_dev->mc_count--;
		FUNC2(i);
	}
}