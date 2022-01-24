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
 int /*<<< orphan*/  BPF_ANY ; 
 int /*<<< orphan*/  FUNC0 (long,struct pt_regs*) ; 
 long* FUNC1 (int /*<<< orphan*/ *,long*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,long*,long*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  my_map ; 

int FUNC3(struct pt_regs *ctx)
{
	long loc = 0;
	long init_val = 1;
	long *value;

	/* read ip of kfree_skb caller.
	 * non-portable version of __builtin_return_address(0)
	 */
	FUNC0(loc, ctx);

	value = FUNC1(&my_map, &loc);
	if (value)
		*value += 1;
	else
		FUNC2(&my_map, &loc, &init_val, BPF_ANY);
	return 0;
}