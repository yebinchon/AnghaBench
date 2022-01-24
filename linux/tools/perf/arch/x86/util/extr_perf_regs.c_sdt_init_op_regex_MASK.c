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
 int /*<<< orphan*/  REG_EXTENDED ; 
 int /*<<< orphan*/  SDT_OP_REGEX ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sdt_op_regex ; 

__attribute__((used)) static int FUNC2(void)
{
	static int initialized;
	int ret = 0;

	if (initialized)
		return 0;

	ret = FUNC1(&sdt_op_regex, SDT_OP_REGEX, REG_EXTENDED);
	if (ret < 0) {
		FUNC0("Regex compilation error.\n");
		return ret;
	}

	initialized = 1;
	return 0;
}