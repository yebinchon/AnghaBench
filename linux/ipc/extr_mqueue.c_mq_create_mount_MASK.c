#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vfsmount {int dummy; } ;
struct mqueue_fs_context {TYPE_1__* ipc_ns; } ;
struct ipc_namespace {int dummy; } ;
struct fs_context {int /*<<< orphan*/  user_ns; struct mqueue_fs_context* fs_private; } ;
struct TYPE_3__ {int /*<<< orphan*/  user_ns; } ;

/* Variables and functions */
 struct vfsmount* FUNC0 (struct fs_context*) ; 
 scalar_t__ FUNC1 (struct fs_context*) ; 
 int /*<<< orphan*/  SB_KERNMOUNT ; 
 struct vfsmount* FUNC2 (struct fs_context*) ; 
 struct fs_context* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (struct ipc_namespace*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mqueue_fs_type ; 
 int /*<<< orphan*/  FUNC6 (struct fs_context*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct vfsmount *FUNC9(struct ipc_namespace *ns)
{
	struct mqueue_fs_context *ctx;
	struct fs_context *fc;
	struct vfsmount *mnt;

	fc = FUNC3(&mqueue_fs_type, SB_KERNMOUNT);
	if (FUNC1(fc))
		return FUNC0(fc);

	ctx = fc->fs_private;
	FUNC7(ctx->ipc_ns);
	ctx->ipc_ns = FUNC4(ns);
	FUNC8(fc->user_ns);
	fc->user_ns = FUNC5(ctx->ipc_ns->user_ns);

	mnt = FUNC2(fc);
	FUNC6(fc);
	return mnt;
}