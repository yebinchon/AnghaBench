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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hwpoison_dir ; 
 int /*<<< orphan*/  hwpoison_filter_dev_major ; 
 int /*<<< orphan*/  hwpoison_filter_dev_minor ; 
 int /*<<< orphan*/  hwpoison_filter_enable ; 
 int /*<<< orphan*/  hwpoison_filter_flags_mask ; 
 int /*<<< orphan*/  hwpoison_filter_flags_value ; 
 int /*<<< orphan*/  hwpoison_filter_memcg ; 
 int /*<<< orphan*/  hwpoison_fops ; 
 int /*<<< orphan*/  unpoison_fops ; 

__attribute__((used)) static int FUNC4(void)
{
	hwpoison_dir = FUNC0("hwpoison", NULL);

	/*
	 * Note that the below poison/unpoison interfaces do not involve
	 * hardware status change, hence do not require hardware support.
	 * They are mainly for testing hwpoison in software level.
	 */
	FUNC1("corrupt-pfn", 0200, hwpoison_dir, NULL,
			    &hwpoison_fops);

	FUNC1("unpoison-pfn", 0200, hwpoison_dir, NULL,
			    &unpoison_fops);

	FUNC2("corrupt-filter-enable", 0600, hwpoison_dir,
			   &hwpoison_filter_enable);

	FUNC2("corrupt-filter-dev-major", 0600, hwpoison_dir,
			   &hwpoison_filter_dev_major);

	FUNC2("corrupt-filter-dev-minor", 0600, hwpoison_dir,
			   &hwpoison_filter_dev_minor);

	FUNC3("corrupt-filter-flags-mask", 0600, hwpoison_dir,
			   &hwpoison_filter_flags_mask);

	FUNC3("corrupt-filter-flags-value", 0600, hwpoison_dir,
			   &hwpoison_filter_flags_value);

#ifdef CONFIG_MEMCG
	debugfs_create_u64("corrupt-filter-memcg", 0600, hwpoison_dir,
			   &hwpoison_filter_memcg);
#endif

	return 0;
}