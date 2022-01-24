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
struct user_namespace {int dummy; } ;
struct task_struct {TYPE_1__* nsproxy; } ;
struct nsproxy {scalar_t__ mnt_ns; scalar_t__ uts_ns; scalar_t__ ipc_ns; scalar_t__ pid_ns_for_children; scalar_t__ cgroup_ns; scalar_t__ net_ns; } ;
struct fs_struct {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  net_ns; int /*<<< orphan*/  cgroup_ns; int /*<<< orphan*/  pid_ns_for_children; int /*<<< orphan*/  ipc_ns; int /*<<< orphan*/  uts_ns; int /*<<< orphan*/  mnt_ns; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct nsproxy* FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (unsigned long,struct user_namespace*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (unsigned long,struct user_namespace*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (unsigned long,int /*<<< orphan*/ ,struct user_namespace*,struct fs_struct*) ; 
 scalar_t__ FUNC6 (unsigned long,struct user_namespace*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (unsigned long,struct user_namespace*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (unsigned long,struct user_namespace*,int /*<<< orphan*/ ) ; 
 struct nsproxy* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct nsproxy*) ; 
 int /*<<< orphan*/  nsproxy_cachep ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 

__attribute__((used)) static struct nsproxy *FUNC16(unsigned long flags,
	struct task_struct *tsk, struct user_namespace *user_ns,
	struct fs_struct *new_fs)
{
	struct nsproxy *new_nsp;
	int err;

	new_nsp = FUNC9();
	if (!new_nsp)
		return FUNC0(-ENOMEM);

	new_nsp->mnt_ns = FUNC5(flags, tsk->nsproxy->mnt_ns, user_ns, new_fs);
	if (FUNC1(new_nsp->mnt_ns)) {
		err = FUNC2(new_nsp->mnt_ns);
		goto out_ns;
	}

	new_nsp->uts_ns = FUNC8(flags, user_ns, tsk->nsproxy->uts_ns);
	if (FUNC1(new_nsp->uts_ns)) {
		err = FUNC2(new_nsp->uts_ns);
		goto out_uts;
	}

	new_nsp->ipc_ns = FUNC4(flags, user_ns, tsk->nsproxy->ipc_ns);
	if (FUNC1(new_nsp->ipc_ns)) {
		err = FUNC2(new_nsp->ipc_ns);
		goto out_ipc;
	}

	new_nsp->pid_ns_for_children =
		FUNC7(flags, user_ns, tsk->nsproxy->pid_ns_for_children);
	if (FUNC1(new_nsp->pid_ns_for_children)) {
		err = FUNC2(new_nsp->pid_ns_for_children);
		goto out_pid;
	}

	new_nsp->cgroup_ns = FUNC3(flags, user_ns,
					    tsk->nsproxy->cgroup_ns);
	if (FUNC1(new_nsp->cgroup_ns)) {
		err = FUNC2(new_nsp->cgroup_ns);
		goto out_cgroup;
	}

	new_nsp->net_ns = FUNC6(flags, user_ns, tsk->nsproxy->net_ns);
	if (FUNC1(new_nsp->net_ns)) {
		err = FUNC2(new_nsp->net_ns);
		goto out_net;
	}

	return new_nsp;

out_net:
	FUNC11(new_nsp->cgroup_ns);
out_cgroup:
	if (new_nsp->pid_ns_for_children)
		FUNC14(new_nsp->pid_ns_for_children);
out_pid:
	if (new_nsp->ipc_ns)
		FUNC12(new_nsp->ipc_ns);
out_ipc:
	if (new_nsp->uts_ns)
		FUNC15(new_nsp->uts_ns);
out_uts:
	if (new_nsp->mnt_ns)
		FUNC13(new_nsp->mnt_ns);
out_ns:
	FUNC10(nsproxy_cachep, new_nsp);
	return FUNC0(err);
}