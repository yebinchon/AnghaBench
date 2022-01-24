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
struct task_struct {int flags; int /*<<< orphan*/  blocked; } ;

/* Variables and functions */
 int PF_EXITING ; 
 int SIGKILL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*) ; 
 scalar_t__ FUNC2 (struct task_struct*) ; 
 scalar_t__ FUNC3 (struct task_struct*) ; 

__attribute__((used)) static inline bool FUNC4(int sig, struct task_struct *p)
{
	if (FUNC0(&p->blocked, sig))
		return false;

	if (p->flags & PF_EXITING)
		return false;

	if (sig == SIGKILL)
		return true;

	if (FUNC3(p))
		return false;

	return FUNC2(p) || !FUNC1(p);
}