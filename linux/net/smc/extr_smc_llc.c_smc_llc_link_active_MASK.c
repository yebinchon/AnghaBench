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
struct smc_link {int llc_testlink_time; int /*<<< orphan*/  llc_testlink_wrk; int /*<<< orphan*/  llc_wq; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  SMC_LNK_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

void FUNC1(struct smc_link *link, int testlink_time)
{
	link->state = SMC_LNK_ACTIVE;
	if (testlink_time) {
		link->llc_testlink_time = testlink_time * HZ;
		FUNC0(link->llc_wq, &link->llc_testlink_wrk,
				   link->llc_testlink_time);
	}
}