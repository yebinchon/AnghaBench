#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct fs_context {int purpose; unsigned int sb_flags; unsigned int sb_flags_mask; int need_free; TYPE_3__* fs_type; int /*<<< orphan*/  root; void* user_ns; TYPE_4__* cred; int /*<<< orphan*/  uapi_mutex; int /*<<< orphan*/  net_ns; } ;
struct file_system_type {int dummy; } ;
struct dentry {TYPE_2__* d_sb; } ;
typedef  enum fs_context_purpose { ____Placeholder_fs_context_purpose } fs_context_purpose ;
struct TYPE_10__ {TYPE_1__* nsproxy; } ;
struct TYPE_9__ {int /*<<< orphan*/  user_ns; } ;
struct TYPE_8__ {int (* init_fs_context ) (struct fs_context*) ;} ;
struct TYPE_7__ {int /*<<< orphan*/  s_user_ns; int /*<<< orphan*/  s_active; } ;
struct TYPE_6__ {int /*<<< orphan*/  net_ns; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct fs_context* FUNC0 (int) ; 
#define  FS_CONTEXT_FOR_MOUNT 130 
#define  FS_CONTEXT_FOR_RECONFIGURE 129 
#define  FS_CONTEXT_FOR_SUBMOUNT 128 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_5__* current ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 TYPE_4__* FUNC3 () ; 
 TYPE_3__* FUNC4 (struct file_system_type*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 struct fs_context* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct fs_context*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct fs_context*) ; 

__attribute__((used)) static struct fs_context *FUNC11(struct file_system_type *fs_type,
				      struct dentry *reference,
				      unsigned int sb_flags,
				      unsigned int sb_flags_mask,
				      enum fs_context_purpose purpose)
{
	int (*init_fs_context)(struct fs_context *);
	struct fs_context *fc;
	int ret = -ENOMEM;

	fc = FUNC7(sizeof(struct fs_context), GFP_KERNEL);
	if (!fc)
		return FUNC0(-ENOMEM);

	fc->purpose	= purpose;
	fc->sb_flags	= sb_flags;
	fc->sb_flags_mask = sb_flags_mask;
	fc->fs_type	= FUNC4(fs_type);
	fc->cred	= FUNC3();
	fc->net_ns	= FUNC5(current->nsproxy->net_ns);

	FUNC9(&fc->uapi_mutex);

	switch (purpose) {
	case FS_CONTEXT_FOR_MOUNT:
		fc->user_ns = FUNC6(fc->cred->user_ns);
		break;
	case FS_CONTEXT_FOR_SUBMOUNT:
		fc->user_ns = FUNC6(reference->d_sb->s_user_ns);
		break;
	case FS_CONTEXT_FOR_RECONFIGURE:
		FUNC1(&reference->d_sb->s_active);
		fc->user_ns = FUNC6(reference->d_sb->s_user_ns);
		fc->root = FUNC2(reference);
		break;
	}

	/* TODO: Make all filesystems support this unconditionally */
	init_fs_context = fc->fs_type->init_fs_context;
	if (!init_fs_context)
		init_fs_context = legacy_init_fs_context;

	ret = init_fs_context(fc);
	if (ret < 0)
		goto err_fc;
	fc->need_free = true;
	return fc;

err_fc:
	FUNC10(fc);
	return FUNC0(ret);
}