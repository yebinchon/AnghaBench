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
 int /*<<< orphan*/  BPF_ANY ; 
 long FUNC0 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,long*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  my_map ; 

int FUNC3(struct pt_regs *ctx)
{
	long rq = FUNC0(ctx);
	u64 val = FUNC1();

	FUNC2(&my_map, &rq, &val, BPF_ANY);
	return 0;
}