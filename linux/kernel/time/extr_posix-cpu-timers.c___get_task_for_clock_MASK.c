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
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/  clockid_t ;

/* Variables and functions */
 scalar_t__ CPUCLOCK_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 
 struct task_struct* FUNC4 (int /*<<< orphan*/  const,int const,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static struct task_struct *FUNC7(const clockid_t clock,
						bool getref, bool gettime)
{
	const bool thread = !!FUNC0(clock);
	const pid_t pid = FUNC1(clock);
	struct task_struct *p;

	if (FUNC2(clock) >= CPUCLOCK_MAX)
		return NULL;

	FUNC5();
	p = FUNC4(pid, thread, gettime);
	if (p && getref)
		FUNC3(p);
	FUNC6();
	return p;
}