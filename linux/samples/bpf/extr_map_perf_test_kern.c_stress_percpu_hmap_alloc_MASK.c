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
typedef  int /*<<< orphan*/  u32 ;
struct pt_regs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_ANY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 long* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,long*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  percpu_hash_map_alloc ; 

int FUNC4(struct pt_regs *ctx)
{
	u32 key = FUNC0();
	long init_val = 1;
	long *value;

	FUNC3(&percpu_hash_map_alloc, &key, &init_val, BPF_ANY);
	value = FUNC2(&percpu_hash_map_alloc, &key);
	if (value)
		FUNC1(&percpu_hash_map_alloc, &key);
	return 0;
}