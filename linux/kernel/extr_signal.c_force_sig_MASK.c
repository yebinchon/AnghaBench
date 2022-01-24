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
struct kernel_siginfo {int si_signo; scalar_t__ si_uid; scalar_t__ si_pid; int /*<<< orphan*/  si_code; scalar_t__ si_errno; } ;

/* Variables and functions */
 int /*<<< orphan*/  SI_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct kernel_siginfo*) ; 
 int /*<<< orphan*/  FUNC1 (struct kernel_siginfo*) ; 

void FUNC2(int sig)
{
	struct kernel_siginfo info;

	FUNC0(&info);
	info.si_signo = sig;
	info.si_errno = 0;
	info.si_code = SI_KERNEL;
	info.si_pid = 0;
	info.si_uid = 0;
	FUNC1(&info);
}