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
struct super_block {int /*<<< orphan*/  s_umount; } ;
struct inode {struct super_block* i_sb; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 unsigned int DQUOT_LIMITS_ENABLED ; 
 unsigned int DQUOT_SUSPENDED ; 
 unsigned int DQUOT_USAGE_ENABLED ; 
 int EBUSY ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dq_state_lock ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int) ; 
 TYPE_1__* FUNC4 (struct super_block*) ; 
 scalar_t__ FUNC5 (struct super_block*,int) ; 
 scalar_t__ FUNC6 (struct super_block*,int) ; 
 scalar_t__ FUNC7 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (struct inode*,int,int,unsigned int) ; 

int FUNC12(struct inode *inode, int type, int format_id,
		 unsigned int flags)
{
	struct super_block *sb = inode->i_sb;

	/* Just unsuspend quotas? */
	FUNC0(flags & DQUOT_SUSPENDED);
	/* s_umount should be held in exclusive mode */
	if (FUNC1(FUNC2(&sb->s_umount)))
		FUNC10(&sb->s_umount);

	if (!flags)
		return 0;
	/* Just updating flags needed? */
	if (FUNC6(sb, type)) {
		if (flags & DQUOT_USAGE_ENABLED &&
		    FUNC7(sb, type))
			return -EBUSY;
		if (flags & DQUOT_LIMITS_ENABLED &&
		    FUNC5(sb, type))
			return -EBUSY;
		FUNC8(&dq_state_lock);
		FUNC4(sb)->flags |= FUNC3(flags, type);
		FUNC9(&dq_state_lock);
		return 0;
	}

	return FUNC11(inode, type, format_id, flags);
}