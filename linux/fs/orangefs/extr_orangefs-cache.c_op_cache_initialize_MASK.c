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
struct orangefs_kernel_op_s {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  ORANGEFS_CACHE_CREATE_FLAGS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int next_tag_value ; 
 int /*<<< orphan*/  next_tag_value_lock ; 
 int /*<<< orphan*/  op_cache ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(void)
{
	op_cache = FUNC1("orangefs_op_cache",
				     sizeof(struct orangefs_kernel_op_s),
				     0,
				     ORANGEFS_CACHE_CREATE_FLAGS,
				     NULL);

	if (!op_cache) {
		FUNC0("Cannot create orangefs_op_cache\n");
		return -ENOMEM;
	}

	/* initialize our atomic tag counter */
	FUNC2(&next_tag_value_lock);
	next_tag_value = 100;
	FUNC3(&next_tag_value_lock);
	return 0;
}