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
struct vfsmount {scalar_t__ user_ns; struct proc_fs_context* fs_private; } ;
struct proc_fs_context {struct pid_namespace* pid_ns; } ;
struct pid_namespace {scalar_t__ user_ns; struct vfsmount* proc_mnt; } ;
struct fs_context {scalar_t__ user_ns; struct proc_fs_context* fs_private; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct vfsmount*) ; 
 int FUNC1 (struct vfsmount*) ; 
 int /*<<< orphan*/  SB_KERNMOUNT ; 
 struct vfsmount* FUNC2 (struct vfsmount*) ; 
 struct vfsmount* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pid_namespace*) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  proc_fs_type ; 
 int /*<<< orphan*/  FUNC6 (struct vfsmount*) ; 
 int /*<<< orphan*/  FUNC7 (struct pid_namespace*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 

int FUNC9(struct pid_namespace *ns)
{
	struct proc_fs_context *ctx;
	struct fs_context *fc;
	struct vfsmount *mnt;

	fc = FUNC3(&proc_fs_type, SB_KERNMOUNT);
	if (FUNC0(fc))
		return FUNC1(fc);

	if (fc->user_ns != ns->user_ns) {
		FUNC8(fc->user_ns);
		fc->user_ns = FUNC5(ns->user_ns);
	}

	ctx = fc->fs_private;
	if (ctx->pid_ns != ns) {
		FUNC7(ctx->pid_ns);
		FUNC4(ns);
		ctx->pid_ns = ns;
	}

	mnt = FUNC2(fc);
	FUNC6(fc);
	if (FUNC0(mnt))
		return FUNC1(mnt);

	ns->proc_mnt = mnt;
	return 0;
}