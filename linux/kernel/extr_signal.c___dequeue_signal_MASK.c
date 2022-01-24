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
struct sigpending {int dummy; } ;
typedef  int /*<<< orphan*/  sigset_t ;
typedef  int /*<<< orphan*/  kernel_siginfo_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct sigpending*,int /*<<< orphan*/ *,int*) ; 
 int FUNC1 (struct sigpending*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct sigpending *pending, sigset_t *mask,
			kernel_siginfo_t *info, bool *resched_timer)
{
	int sig = FUNC1(pending, mask);

	if (sig)
		FUNC0(sig, pending, info, resched_timer);
	return sig;
}