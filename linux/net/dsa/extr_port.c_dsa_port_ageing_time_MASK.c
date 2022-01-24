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
struct switchdev_trans {int dummy; } ;
struct dsa_port {unsigned int ageing_time; } ;
struct dsa_notifier_ageing_time_info {unsigned int ageing_time; struct switchdev_trans* trans; } ;
typedef  int /*<<< orphan*/  clock_t ;

/* Variables and functions */
 int /*<<< orphan*/  DSA_NOTIFIER_AGEING_TIME ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct dsa_port*,int /*<<< orphan*/ ,struct dsa_notifier_ageing_time_info*) ; 
 unsigned int FUNC2 (unsigned long) ; 
 scalar_t__ FUNC3 (struct switchdev_trans*) ; 

int FUNC4(struct dsa_port *dp, clock_t ageing_clock,
			 struct switchdev_trans *trans)
{
	unsigned long ageing_jiffies = FUNC0(ageing_clock);
	unsigned int ageing_time = FUNC2(ageing_jiffies);
	struct dsa_notifier_ageing_time_info info = {
		.ageing_time = ageing_time,
		.trans = trans,
	};

	if (FUNC3(trans))
		return FUNC1(dp, DSA_NOTIFIER_AGEING_TIME, &info);

	dp->ageing_time = ageing_time;

	return FUNC1(dp, DSA_NOTIFIER_AGEING_TIME, &info);
}