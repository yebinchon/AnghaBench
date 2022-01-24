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
typedef  int /*<<< orphan*/  u64 ;
struct timespec64 {int dummy; } ;
struct task_struct {int dummy; } ;
typedef  int /*<<< orphan*/  clockid_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const,struct task_struct*,int) ; 
 struct task_struct* FUNC4 (int /*<<< orphan*/  const) ; 
 struct timespec64 FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct task_struct*) ; 

__attribute__((used)) static int FUNC7(const clockid_t clock, struct timespec64 *tp)
{
	const clockid_t clkid = FUNC1(clock);
	struct task_struct *tsk;
	u64 t;

	tsk = FUNC4(clock);
	if (!tsk)
		return -EINVAL;

	if (FUNC0(clock))
		t = FUNC2(clkid, tsk);
	else
		t = FUNC3(clkid, tsk, false);
	FUNC6(tsk);

	*tp = FUNC5(t);
	return 0;
}