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
struct smc_ib_device {int /*<<< orphan*/  roce_cq_send; int /*<<< orphan*/  roce_cq_recv; scalar_t__ initialized; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct smc_ib_device*) ; 

__attribute__((used)) static void FUNC2(struct smc_ib_device *smcibdev)
{
	if (!smcibdev->initialized)
		return;
	smcibdev->initialized = 0;
	FUNC1(smcibdev);
	FUNC0(smcibdev->roce_cq_recv);
	FUNC0(smcibdev->roce_cq_send);
}