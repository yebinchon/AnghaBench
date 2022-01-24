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
struct srcu_struct {int /*<<< orphan*/  srcu_gp_seq_needed_exp; int /*<<< orphan*/  srcu_gp_seq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long SRCU_INTERVAL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long FUNC2(struct srcu_struct *ssp)
{
	if (FUNC1(FUNC0(ssp->srcu_gp_seq),
			 FUNC0(ssp->srcu_gp_seq_needed_exp)))
		return 0;
	return SRCU_INTERVAL;
}