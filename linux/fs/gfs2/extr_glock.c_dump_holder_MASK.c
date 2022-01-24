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
struct task_struct {char* comm; } ;
struct seq_file {int dummy; } ;
struct gfs2_holder {scalar_t__ gh_ip; scalar_t__ gh_owner_pid; int /*<<< orphan*/  gh_error; int /*<<< orphan*/  gh_iflags; int /*<<< orphan*/  gh_flags; int /*<<< orphan*/  gh_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  PIDTYPE_PID ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,long,char*,void*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 struct task_struct* FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct seq_file *seq, const struct gfs2_holder *gh,
			const char *fs_id_buf)
{
	struct task_struct *gh_owner = NULL;
	char flags_buf[32];

	FUNC4();
	if (gh->gh_owner_pid)
		gh_owner = FUNC3(gh->gh_owner_pid, PIDTYPE_PID);
	FUNC0(seq, "%s H: s:%s f:%s e:%d p:%ld [%s] %pS\n",
		       fs_id_buf, FUNC6(gh->gh_state),
		       FUNC1(flags_buf, gh->gh_flags, gh->gh_iflags),
		       gh->gh_error,
		       gh->gh_owner_pid ? (long)FUNC2(gh->gh_owner_pid) : -1,
		       gh_owner ? gh_owner->comm : "(ended)",
		       (void *)gh->gh_ip);
	FUNC5();
}