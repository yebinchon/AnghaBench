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
struct tgid_iter {int tgid; int /*<<< orphan*/ * task; } ;
struct pid_namespace {int dummy; } ;
struct pid {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PIDTYPE_PID ; 
 struct pid* FUNC0 (int,struct pid_namespace*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct pid*,struct pid_namespace*) ; 
 int /*<<< orphan*/ * FUNC4 (struct pid*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static struct tgid_iter FUNC8(struct pid_namespace *ns, struct tgid_iter iter)
{
	struct pid *pid;

	if (iter.task)
		FUNC5(iter.task);
	FUNC6();
retry:
	iter.task = NULL;
	pid = FUNC0(iter.tgid, ns);
	if (pid) {
		iter.tgid = FUNC3(pid, ns);
		iter.task = FUNC4(pid, PIDTYPE_PID);
		/* What we to know is if the pid we have find is the
		 * pid of a thread_group_leader.  Testing for task
		 * being a thread_group_leader is the obvious thing
		 * todo but there is a window when it fails, due to
		 * the pid transfer logic in de_thread.
		 *
		 * So we perform the straight forward test of seeing
		 * if the pid we have found is the pid of a thread
		 * group leader, and don't worry if the task we have
		 * found doesn't happen to be a thread group leader.
		 * As we don't care in the case of readdir.
		 */
		if (!iter.task || !FUNC2(iter.task)) {
			iter.tgid += 1;
			goto retry;
		}
		FUNC1(iter.task);
	}
	FUNC7();
	return iter;
}