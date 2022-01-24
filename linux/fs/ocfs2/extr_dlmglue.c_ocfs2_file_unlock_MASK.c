#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ocfs2_super {int dummy; } ;
struct ocfs2_mask_waiter {int dummy; } ;
struct ocfs2_lock_res {int l_flags; scalar_t__ l_level; int /*<<< orphan*/  l_lock; int /*<<< orphan*/  l_blocking; int /*<<< orphan*/  l_action; int /*<<< orphan*/  l_name; } ;
struct ocfs2_file_private {struct ocfs2_lock_res fp_flock; } ;
struct file {TYPE_2__* f_mapping; struct ocfs2_file_private* private_data; } ;
struct TYPE_4__ {TYPE_1__* host; } ;
struct TYPE_3__ {int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLM_LOCK_EX ; 
 scalar_t__ DLM_LOCK_NL ; 
 int OCFS2_LOCK_ATTACHED ; 
 int /*<<< orphan*/  OCFS2_LOCK_BLOCKED ; 
 int /*<<< orphan*/  OCFS2_LOCK_BUSY ; 
 struct ocfs2_super* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ocfs2_lock_res*,struct ocfs2_mask_waiter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ocfs2_lock_res*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (struct ocfs2_super*,struct ocfs2_lock_res*,scalar_t__,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct ocfs2_mask_waiter*) ; 
 unsigned int FUNC7 (struct ocfs2_lock_res*,scalar_t__) ; 
 int FUNC8 (struct ocfs2_mask_waiter*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC11(struct file *file)
{
	int ret;
	unsigned int gen;
	unsigned long flags;
	struct ocfs2_file_private *fp = file->private_data;
	struct ocfs2_lock_res *lockres = &fp->fp_flock;
	struct ocfs2_super *osb = FUNC0(file->f_mapping->host->i_sb);
	struct ocfs2_mask_waiter mw;

	FUNC6(&mw);

	if (!(lockres->l_flags & OCFS2_LOCK_ATTACHED))
		return;

	if (lockres->l_level == DLM_LOCK_NL)
		return;

	FUNC3(0, "Unlock: \"%s\" flags: 0x%lx, level: %d, act: %d\n",
	     lockres->l_name, lockres->l_flags, lockres->l_level,
	     lockres->l_action);

	FUNC9(&lockres->l_lock, flags);
	/*
	 * Fake a blocking ast for the downconvert code.
	 */
	FUNC2(lockres, OCFS2_LOCK_BLOCKED);
	lockres->l_blocking = DLM_LOCK_EX;

	gen = FUNC7(lockres, DLM_LOCK_NL);
	FUNC1(lockres, &mw, OCFS2_LOCK_BUSY, 0);
	FUNC10(&lockres->l_lock, flags);

	ret = FUNC5(osb, lockres, DLM_LOCK_NL, 0, gen);
	if (ret) {
		FUNC4(ret);
		return;
	}

	ret = FUNC8(&mw);
	if (ret)
		FUNC4(ret);
}