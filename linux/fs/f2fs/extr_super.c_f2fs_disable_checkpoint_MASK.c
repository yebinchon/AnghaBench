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
struct f2fs_sb_info {TYPE_1__* sb; int /*<<< orphan*/  gc_mutex; int /*<<< orphan*/  stat_lock; int /*<<< orphan*/  unusable_block_count; } ;
struct cp_control {int /*<<< orphan*/  reason; } ;
typedef  int /*<<< orphan*/  block_t ;
struct TYPE_2__ {unsigned int s_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CP_PAUSE ; 
 int /*<<< orphan*/  DISABLE_TIME ; 
 int EAGAIN ; 
 int EINVAL ; 
 int ENODATA ; 
 int /*<<< orphan*/  NULL_SEGNO ; 
 int /*<<< orphan*/  SBI_CP_DISABLED ; 
 unsigned int SB_ACTIVE ; 
 unsigned int SB_RDONLY ; 
 scalar_t__ FUNC0 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct f2fs_sb_info*,char*) ; 
 int FUNC2 (struct f2fs_sb_info*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct f2fs_sb_info*,struct cp_control*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC13(struct f2fs_sb_info *sbi)
{
	unsigned int s_flags = sbi->sb->s_flags;
	struct cp_control cpc;
	int err = 0;
	int ret;
	block_t unusable;

	if (s_flags & SB_RDONLY) {
		FUNC1(sbi, "checkpoint=disable on readonly fs");
		return -EINVAL;
	}
	sbi->sb->s_flags |= SB_ACTIVE;

	FUNC5(sbi, DISABLE_TIME);

	while (!FUNC4(sbi, DISABLE_TIME)) {
		FUNC7(&sbi->gc_mutex);
		err = FUNC2(sbi, true, false, NULL_SEGNO);
		if (err == -ENODATA) {
			err = 0;
			break;
		}
		if (err && err != -EAGAIN)
			break;
	}

	ret = FUNC12(sbi->sb);
	if (ret || err) {
		err = ret ? ret: err;
		goto restore_flag;
	}

	unusable = FUNC3(sbi);
	if (FUNC0(sbi, unusable)) {
		err = -EAGAIN;
		goto restore_flag;
	}

	FUNC7(&sbi->gc_mutex);
	cpc.reason = CP_PAUSE;
	FUNC9(sbi, SBI_CP_DISABLED);
	err = FUNC6(sbi, &cpc);
	if (err)
		goto out_unlock;

	FUNC10(&sbi->stat_lock);
	sbi->unusable_block_count = unusable;
	FUNC11(&sbi->stat_lock);

out_unlock:
	FUNC8(&sbi->gc_mutex);
restore_flag:
	sbi->sb->s_flags = s_flags;	/* Restore MS_RDONLY status */
	return err;
}