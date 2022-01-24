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
struct smc_link_group {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct smc_link_group*,int) ; 

__attribute__((used)) static void FUNC1(struct smc_link_group *lgr)
{
	/* free send buffers */
	FUNC0(lgr, false);
	/* free rmbs */
	FUNC0(lgr, true);
}