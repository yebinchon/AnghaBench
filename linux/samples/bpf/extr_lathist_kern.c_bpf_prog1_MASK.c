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
typedef  int /*<<< orphan*/  u64 ;
struct pt_regs {int dummy; } ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  my_map ; 

int FUNC3(struct pt_regs *ctx)
{
	int cpu = FUNC0();
	u64 *ts = FUNC2(&my_map, &cpu);

	if (ts)
		*ts = FUNC1();

	return 0;
}