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
struct task_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_NICE ; 
 int /*<<< orphan*/  RLIMIT_NICE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int const) ; 
 int FUNC2 (struct task_struct const*,int /*<<< orphan*/ ) ; 

int FUNC3(const struct task_struct *p, const int nice)
{
	/* Convert nice value [19,-20] to rlimit style value [1,40]: */
	int nice_rlim = FUNC1(nice);

	return (nice_rlim <= FUNC2(p, RLIMIT_NICE) ||
		FUNC0(CAP_SYS_NICE));
}