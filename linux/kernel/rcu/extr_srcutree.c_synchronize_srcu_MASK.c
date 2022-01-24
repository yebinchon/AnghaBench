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
struct srcu_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct srcu_struct*,int) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (struct srcu_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct srcu_struct*) ; 

void FUNC4(struct srcu_struct *ssp)
{
	if (FUNC2(ssp) || FUNC1())
		FUNC3(ssp);
	else
		FUNC0(ssp, true);
}