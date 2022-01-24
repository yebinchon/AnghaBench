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
typedef  int /*<<< orphan*/  cap_t ;
typedef  int /*<<< orphan*/  cap_flag_value_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_EFFECTIVE ; 
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 

int FUNC3(void)
{
	cap_flag_value_t val;
	cap_t caps = FUNC2();

	if (!caps)
		return 1;

	if (FUNC1(caps, CAP_SYS_ADMIN, CAP_EFFECTIVE, &val) != 0)
		return 1;

	if (FUNC0(caps) != 0)
		return 1;

	return 0;
}