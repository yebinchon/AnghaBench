#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* sighand; } ;
struct TYPE_4__ {int /*<<< orphan*/  siglock; } ;

/* Variables and functions */
 long EINVAL ; 
 unsigned long SECCOMP_MODE_STRICT ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,unsigned long const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static long FUNC5(void)
{
	const unsigned long seccomp_mode = SECCOMP_MODE_STRICT;
	long ret = -EINVAL;

	FUNC3(&current->sighand->siglock);

	if (!FUNC2(seccomp_mode))
		goto out;

#ifdef TIF_NOTSC
	disable_TSC();
#endif
	FUNC1(current, seccomp_mode, 0);
	ret = 0;

out:
	FUNC4(&current->sighand->siglock);

	return ret;
}