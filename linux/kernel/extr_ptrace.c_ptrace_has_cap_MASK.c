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
struct user_namespace {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_PTRACE ; 
 unsigned int PTRACE_MODE_NOAUDIT ; 
 int /*<<< orphan*/  current ; 
 int FUNC0 (int /*<<< orphan*/ ,struct user_namespace*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct user_namespace*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct user_namespace *ns, unsigned int mode)
{
	if (mode & PTRACE_MODE_NOAUDIT)
		return FUNC1(current, ns, CAP_SYS_PTRACE);
	else
		return FUNC0(current, ns, CAP_SYS_PTRACE);
}