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
struct fown_struct {int dummy; } ;
typedef  enum pid_type { ____Placeholder_pid_type } pid_type ;

/* Variables and functions */
 int /*<<< orphan*/  SEND_SIG_PRIV ; 
 int /*<<< orphan*/  SIGURG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct task_struct*,int) ; 
 scalar_t__ FUNC1 (struct task_struct*,struct fown_struct*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct task_struct *p,
				struct fown_struct *fown, enum pid_type type)
{
	if (FUNC1(p, fown, SIGURG))
		FUNC0(SIGURG, SEND_SIG_PRIV, p, type);
}