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
struct smc_link {scalar_t__ state; } ;

/* Variables and functions */
 int ENOTCONN ; 
 int /*<<< orphan*/  SMC_LLC_REQ ; 
 scalar_t__ SMC_LNK_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (struct smc_link*) ; 
 int /*<<< orphan*/  FUNC1 (struct smc_link*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct smc_link *lnk)
{
	if (lnk->state == SMC_LNK_ACTIVE &&
	    !FUNC1(lnk, SMC_LLC_REQ, true)) {
		FUNC0(lnk);
		return 0;
	}
	return -ENOTCONN;
}