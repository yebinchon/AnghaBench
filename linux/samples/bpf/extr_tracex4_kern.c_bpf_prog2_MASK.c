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
struct pair {long ip; int /*<<< orphan*/  val; } ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_ANY ; 
 int /*<<< orphan*/  FUNC0 (long,struct pt_regs*) ; 
 long FUNC1 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,long*,struct pair*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  my_map ; 

int FUNC4(struct pt_regs *ctx)
{
	long ptr = FUNC1(ctx);
	long ip = 0;

	/* get ip address of kmem_cache_alloc_node() caller */
	FUNC0(ip, ctx);

	struct pair v = {
		.val = FUNC2(),
		.ip = ip,
	};

	FUNC3(&my_map, &ptr, &v, BPF_ANY);
	return 0;
}