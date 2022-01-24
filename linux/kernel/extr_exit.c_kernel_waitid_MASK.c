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
struct waitid_info {int dummy; } ;
struct wait_opts {int wo_type; int wo_flags; struct rusage* wo_rusage; struct waitid_info* wo_info; struct pid* wo_pid; } ;
struct rusage {int dummy; } ;
struct pid {int dummy; } ;
typedef  int /*<<< orphan*/  pid_t ;
typedef  enum pid_type { ____Placeholder_pid_type } pid_type ;

/* Variables and functions */
 long EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct pid*) ; 
 int PIDTYPE_MAX ; 
 int PIDTYPE_PGID ; 
 int PIDTYPE_PID ; 
 long FUNC1 (struct pid*) ; 
#define  P_ALL 131 
#define  P_PGID 130 
#define  P_PID 129 
#define  P_PIDFD 128 
 int WCONTINUED ; 
 int WEXITED ; 
 int WNOHANG ; 
 int WNOWAIT ; 
 int WSTOPPED ; 
 int __WALL ; 
 int __WCLONE ; 
 int __WNOTHREAD ; 
 int /*<<< orphan*/  current ; 
 long FUNC2 (struct wait_opts*) ; 
 struct pid* FUNC3 (int /*<<< orphan*/ ) ; 
 struct pid* FUNC4 (int /*<<< orphan*/ ,int) ; 
 struct pid* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pid*) ; 

__attribute__((used)) static long FUNC7(int which, pid_t upid, struct waitid_info *infop,
			  int options, struct rusage *ru)
{
	struct wait_opts wo;
	struct pid *pid = NULL;
	enum pid_type type;
	long ret;

	if (options & ~(WNOHANG|WNOWAIT|WEXITED|WSTOPPED|WCONTINUED|
			__WNOTHREAD|__WCLONE|__WALL))
		return -EINVAL;
	if (!(options & (WEXITED|WSTOPPED|WCONTINUED)))
		return -EINVAL;

	switch (which) {
	case P_ALL:
		type = PIDTYPE_MAX;
		break;
	case P_PID:
		type = PIDTYPE_PID;
		if (upid <= 0)
			return -EINVAL;

		pid = FUNC3(upid);
		break;
	case P_PGID:
		type = PIDTYPE_PGID;
		if (upid < 0)
			return -EINVAL;

		if (upid)
			pid = FUNC3(upid);
		else
			pid = FUNC4(current, PIDTYPE_PGID);
		break;
	case P_PIDFD:
		type = PIDTYPE_PID;
		if (upid < 0)
			return -EINVAL;

		pid = FUNC5(upid);
		if (FUNC0(pid))
			return FUNC1(pid);
		break;
	default:
		return -EINVAL;
	}

	wo.wo_type	= type;
	wo.wo_pid	= pid;
	wo.wo_flags	= options;
	wo.wo_info	= infop;
	wo.wo_rusage	= ru;
	ret = FUNC2(&wo);

	FUNC6(pid);
	return ret;
}