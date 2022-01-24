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
struct xt_table_info {int* hook_entry; int* underflow; } ;

/* Variables and functions */
 unsigned int FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,unsigned int) ; 

int FUNC3(const struct xt_table_info *info, unsigned int valid_hooks)
{
	const char *err = "unsorted underflow";
	unsigned int i, max_uflow, max_entry;
	bool check_hooks = false;

	FUNC1(FUNC0(info->hook_entry) != FUNC0(info->underflow));

	max_entry = 0;
	max_uflow = 0;

	for (i = 0; i < FUNC0(info->hook_entry); i++) {
		if (!(valid_hooks & (1 << i)))
			continue;

		if (info->hook_entry[i] == 0xFFFFFFFF)
			return -EINVAL;
		if (info->underflow[i] == 0xFFFFFFFF)
			return -EINVAL;

		if (check_hooks) {
			if (max_uflow > info->underflow[i])
				goto error;

			if (max_uflow == info->underflow[i]) {
				err = "duplicate underflow";
				goto error;
			}
			if (max_entry > info->hook_entry[i]) {
				err = "unsorted entry";
				goto error;
			}
			if (max_entry == info->hook_entry[i]) {
				err = "duplicate entry";
				goto error;
			}
		}
		max_entry = info->hook_entry[i];
		max_uflow = info->underflow[i];
		check_hooks = true;
	}

	return 0;
error:
	FUNC2("%s at hook %d\n", err, i);
	return -EINVAL;
}