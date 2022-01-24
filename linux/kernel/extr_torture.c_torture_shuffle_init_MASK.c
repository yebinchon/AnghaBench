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

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int shuffle_idle_cpu ; 
 long shuffle_interval ; 
 int /*<<< orphan*/  shuffle_tmp_mask ; 
 int /*<<< orphan*/  shuffler_task ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  torture_shuffle ; 

int FUNC3(long shuffint)
{
	shuffle_interval = shuffint;

	shuffle_idle_cpu = -1;

	if (!FUNC1(&shuffle_tmp_mask, GFP_KERNEL)) {
		FUNC0("Failed to alloc mask");
		return -ENOMEM;
	}

	/* Create the shuffler thread */
	return FUNC2(torture_shuffle, NULL, shuffler_task);
}