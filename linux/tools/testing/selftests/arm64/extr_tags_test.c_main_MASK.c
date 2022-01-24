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
struct utsname {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PR_SET_TAGGED_ADDR_CTRL ; 
 int /*<<< orphan*/  PR_TAGGED_ADDR_ENABLE ; 
 scalar_t__ FUNC0 (struct utsname*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct utsname*) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct utsname*) ; 

int FUNC5(void)
{
	static int tbi_enabled = 0;
	unsigned long tag = 0;
	struct utsname *ptr;
	int err;

	if (FUNC3(PR_SET_TAGGED_ADDR_CTRL, PR_TAGGED_ADDR_ENABLE, 0, 0, 0) == 0)
		tbi_enabled = 1;
	ptr = (struct utsname *)FUNC2(sizeof(*ptr));
	if (tbi_enabled)
		tag = 0x42;
	ptr = (struct utsname *)FUNC0(ptr, tag);
	err = FUNC4(ptr);
	FUNC1(ptr);

	return err;
}