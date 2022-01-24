#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct task_struct {int /*<<< orphan*/  timer_slack_ns; } ;
struct seq_file {struct inode* private; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  user_ns; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_NICE ; 
 int EPERM ; 
 int ESRCH ; 
 TYPE_1__* FUNC0 (struct task_struct*) ; 
 struct task_struct* current ; 
 struct task_struct* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC7 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC9 (struct task_struct*) ; 

__attribute__((used)) static int FUNC10(struct seq_file *m, void *v)
{
	struct inode *inode = m->private;
	struct task_struct *p;
	int err = 0;

	p = FUNC1(inode);
	if (!p)
		return -ESRCH;

	if (p != current) {
		FUNC4();
		if (!FUNC2(FUNC0(p)->user_ns, CAP_SYS_NICE)) {
			FUNC5();
			err = -EPERM;
			goto out;
		}
		FUNC5();

		err = FUNC6(p);
		if (err)
			goto out;
	}

	FUNC8(p);
	FUNC7(m, "%llu\n", p->timer_slack_ns);
	FUNC9(p);

out:
	FUNC3(p);

	return err;
}