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
struct pt_regs {int dummy; } ;

/* Variables and functions */
 long FUNC0 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,long*) ; 
 int /*<<< orphan*/  my_map ; 

int FUNC2(struct pt_regs *ctx)
{
	long ptr = FUNC0(ctx);

	FUNC1(&my_map, &ptr);
	return 0;
}