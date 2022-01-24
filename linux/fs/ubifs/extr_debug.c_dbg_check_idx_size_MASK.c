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
struct ubifs_info {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  add_size ; 
 int /*<<< orphan*/  FUNC0 (struct ubifs_info*) ; 
 int FUNC1 (struct ubifs_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,long long*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct ubifs_info*,char*,long long,...) ; 

int FUNC4(struct ubifs_info *c, long long idx_size)
{
	int err;
	long long calc = 0;

	if (!FUNC0(c))
		return 0;

	err = FUNC1(c, NULL, add_size, &calc);
	if (err) {
		FUNC3(c, "error %d while walking the index", err);
		return err;
	}

	if (calc != idx_size) {
		FUNC3(c, "index size check failed: calculated size is %lld, should be %lld",
			  calc, idx_size);
		FUNC2();
		return -EINVAL;
	}

	return 0;
}