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
typedef  scalar_t__ cap_flag_value_t ;

/* Variables and functions */
 scalar_t__ CAP_CLEAR ; 
 int /*<<< orphan*/  CAP_EFFECTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ CAP_SET ; 
 int /*<<< orphan*/  CAP_SETFCAP ; 
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static bool FUNC5(void)
{
	cap_t caps;
	cap_flag_value_t sysadmin = CAP_CLEAR;
	const cap_value_t cap_val = CAP_SYS_ADMIN;

#ifdef CAP_IS_SUPPORTED
	if (!CAP_IS_SUPPORTED(CAP_SETFCAP)) {
		perror("cap_get_flag");
		return false;
	}
#endif
	caps = FUNC3();
	if (!caps) {
		FUNC4("cap_get_proc");
		return false;
	}
	if (FUNC2(caps, cap_val, CAP_EFFECTIVE, &sysadmin))
		FUNC4("cap_get_flag");
	if (FUNC1(caps))
		FUNC4("cap_free");
	return (sysadmin == CAP_SET);
}