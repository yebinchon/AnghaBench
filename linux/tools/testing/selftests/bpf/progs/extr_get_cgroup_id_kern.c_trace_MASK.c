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
typedef  int /*<<< orphan*/  __u64 ;
typedef  scalar_t__ __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 void* FUNC2 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  cg_ids ; 
 int /*<<< orphan*/  pidmap ; 

int FUNC3(void *ctx)
{
	__u32 pid = FUNC1();
	__u32 key = 0, *expected_pid;
	__u64 *val;

	expected_pid = FUNC2(&pidmap, &key);
	if (!expected_pid || *expected_pid != pid)
		return 0;

	val = FUNC2(&cg_ids, &key);
	if (val)
		*val = FUNC0();

	return 0;
}