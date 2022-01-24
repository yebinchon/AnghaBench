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
struct super_block {int /*<<< orphan*/  s_umount; int /*<<< orphan*/  s_user_ns; } ;
struct fs_parameter {int dummy; } ;
struct fs_context {int /*<<< orphan*/  phase; TYPE_1__* root; } ;
struct TYPE_2__ {struct super_block* d_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int EBUSY ; 
 int EPERM ; 
#define  FSCONFIG_CMD_CREATE 129 
#define  FSCONFIG_CMD_RECONFIGURE 128 
 int /*<<< orphan*/  FS_CONTEXT_AWAITING_MOUNT ; 
 int /*<<< orphan*/  FS_CONTEXT_CREATE_PARAMS ; 
 int /*<<< orphan*/  FS_CONTEXT_CREATING ; 
 int /*<<< orphan*/  FS_CONTEXT_FAILED ; 
 int /*<<< orphan*/  FS_CONTEXT_RECONFIGURING ; 
 int /*<<< orphan*/  FS_CONTEXT_RECONF_PARAMS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct fs_context*) ; 
 int FUNC2 (struct fs_context*) ; 
 int /*<<< orphan*/  FUNC3 (struct fs_context*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct fs_context*) ; 
 int FUNC6 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct fs_context*) ; 
 int FUNC10 (struct fs_context*) ; 
 int FUNC11 (struct fs_context*,struct fs_parameter*) ; 

__attribute__((used)) static int FUNC12(struct fs_context *fc, int cmd,
			       struct fs_parameter *param)
{
	struct super_block *sb;
	int ret;

	ret = FUNC2(fc);
	if (ret)
		return ret;
	switch (cmd) {
	case FSCONFIG_CMD_CREATE:
		if (fc->phase != FS_CONTEXT_CREATE_PARAMS)
			return -EBUSY;
		if (!FUNC3(fc))
			return -EPERM;
		fc->phase = FS_CONTEXT_CREATING;
		ret = FUNC10(fc);
		if (ret)
			break;
		sb = fc->root->d_sb;
		ret = FUNC6(sb);
		if (FUNC7(ret)) {
			FUNC1(fc);
			break;
		}
		FUNC8(&sb->s_umount);
		fc->phase = FS_CONTEXT_AWAITING_MOUNT;
		return 0;
	case FSCONFIG_CMD_RECONFIGURE:
		if (fc->phase != FS_CONTEXT_RECONF_PARAMS)
			return -EBUSY;
		fc->phase = FS_CONTEXT_RECONFIGURING;
		sb = fc->root->d_sb;
		if (!FUNC4(sb->s_user_ns, CAP_SYS_ADMIN)) {
			ret = -EPERM;
			break;
		}
		FUNC0(&sb->s_umount);
		ret = FUNC5(fc);
		FUNC8(&sb->s_umount);
		if (ret)
			break;
		FUNC9(fc);
		return 0;
	default:
		if (fc->phase != FS_CONTEXT_CREATE_PARAMS &&
		    fc->phase != FS_CONTEXT_RECONF_PARAMS)
			return -EBUSY;

		return FUNC11(fc, param);
	}
	fc->phase = FS_CONTEXT_FAILED;
	return ret;
}