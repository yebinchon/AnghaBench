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
struct task_struct {struct nsproxy* nsproxy; } ;
struct nsproxy {int /*<<< orphan*/  net_ns; } ;
struct net {int dummy; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PIDTYPE_PID ; 
 struct net* FUNC0 (int /*<<< orphan*/ ) ; 
 struct task_struct* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC6 (struct task_struct*) ; 

__attribute__((used)) static struct net *FUNC7(struct inode *dir)
{
	struct task_struct *task;
	struct nsproxy *ns;
	struct net *net = NULL;

	FUNC3();
	task = FUNC1(FUNC2(dir), PIDTYPE_PID);
	if (task != NULL) {
		FUNC5(task);
		ns = task->nsproxy;
		if (ns != NULL)
			net = FUNC0(ns->net_ns);
		FUNC6(task);
	}
	FUNC4();

	return net;
}