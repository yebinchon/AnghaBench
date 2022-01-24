#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct task_struct {int dummy; } ;
struct seq_file {struct inode* private; } ;
struct pid_namespace {int dummy; } ;
struct pid {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_3__ {int (* proc_show ) (struct seq_file*,struct pid_namespace*,struct pid*,struct task_struct*) ;} ;
struct TYPE_4__ {TYPE_1__ op; } ;

/* Variables and functions */
 int ESRCH ; 
 int /*<<< orphan*/  PIDTYPE_PID ; 
 TYPE_2__* FUNC0 (struct inode*) ; 
 struct task_struct* FUNC1 (struct pid*,int /*<<< orphan*/ ) ; 
 struct pid* FUNC2 (struct inode*) ; 
 struct pid_namespace* FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*) ; 
 int FUNC5 (struct seq_file*,struct pid_namespace*,struct pid*,struct task_struct*) ; 

__attribute__((used)) static int FUNC6(struct seq_file *m, void *v)
{
	struct inode *inode = m->private;
	struct pid_namespace *ns = FUNC3(inode);
	struct pid *pid = FUNC2(inode);
	struct task_struct *task;
	int ret;

	task = FUNC1(pid, PIDTYPE_PID);
	if (!task)
		return -ESRCH;

	ret = FUNC0(inode)->op.proc_show(m, ns, pid, task);

	FUNC4(task);
	return ret;
}