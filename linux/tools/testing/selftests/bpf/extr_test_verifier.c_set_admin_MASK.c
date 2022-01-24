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
typedef  int /*<<< orphan*/  cap_value_t ;
typedef  int /*<<< orphan*/  cap_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_CLEAR ; 
 int /*<<< orphan*/  CAP_EFFECTIVE ; 
 int /*<<< orphan*/  CAP_SET ; 
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(bool admin)
{
	cap_t caps;
	const cap_value_t cap_val = CAP_SYS_ADMIN;
	int ret = -1;

	caps = FUNC1();
	if (!caps) {
		FUNC4("cap_get_proc");
		return -1;
	}
	if (FUNC2(caps, CAP_EFFECTIVE, 1, &cap_val,
				admin ? CAP_SET : CAP_CLEAR)) {
		FUNC4("cap_set_flag");
		goto out;
	}
	if (FUNC3(caps)) {
		FUNC4("cap_set_proc");
		goto out;
	}
	ret = 0;
out:
	if (FUNC0(caps))
		FUNC4("cap_free");
	return ret;
}