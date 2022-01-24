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
struct ocfs2_super {int dummy; } ;
struct ocfs2_lock_res {int l_flags; int /*<<< orphan*/  l_event; int /*<<< orphan*/  l_lock; int /*<<< orphan*/  l_type; int /*<<< orphan*/  l_level; int /*<<< orphan*/  l_name; } ;
struct ocfs2_dlm_lksb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DLM_LOCK_NL ; 
 int /*<<< orphan*/  ML_BASTS ; 
 int OCFS2_LOCK_NOCACHE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ocfs2_lock_res*,int) ; 
 struct ocfs2_super* FUNC3 (struct ocfs2_lock_res*) ; 
 struct ocfs2_lock_res* FUNC4 (struct ocfs2_dlm_lksb*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ocfs2_super*,struct ocfs2_lock_res*) ; 
 int /*<<< orphan*/  FUNC7 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct ocfs2_dlm_lksb *lksb, int level)
{
	struct ocfs2_lock_res *lockres = FUNC4(lksb);
	struct ocfs2_super *osb = FUNC3(lockres);
	int needs_downconvert;
	unsigned long flags;

	FUNC0(level <= DLM_LOCK_NL);

	FUNC1(ML_BASTS, "BAST fired for lockres %s, blocking %d, level %d, "
	     "type %s\n", lockres->l_name, level, lockres->l_level,
	     FUNC5(lockres->l_type));

	/*
	 * We can skip the bast for locks which don't enable caching -
	 * they'll be dropped at the earliest possible time anyway.
	 */
	if (lockres->l_flags & OCFS2_LOCK_NOCACHE)
		return;

	FUNC8(&lockres->l_lock, flags);
	needs_downconvert = FUNC2(lockres, level);
	if (needs_downconvert)
		FUNC6(osb, lockres);
	FUNC9(&lockres->l_lock, flags);

	FUNC10(&lockres->l_event);

	FUNC7(osb);
}