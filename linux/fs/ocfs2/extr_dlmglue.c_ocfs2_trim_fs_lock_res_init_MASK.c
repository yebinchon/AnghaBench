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
struct ocfs2_lock_res {int /*<<< orphan*/  l_name; } ;
struct ocfs2_super {int /*<<< orphan*/  obs_trim_fs_mutex; struct ocfs2_lock_res osb_trim_fs_lockres; } ;

/* Variables and functions */
 int /*<<< orphan*/  OCFS2_LOCK_TYPE_TRIM_FS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ocfs2_super*,struct ocfs2_lock_res*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC3 (struct ocfs2_lock_res*) ; 
 int /*<<< orphan*/  ocfs2_trim_fs_lops ; 

void FUNC4(struct ocfs2_super *osb)
{
	struct ocfs2_lock_res *lockres = &osb->osb_trim_fs_lockres;

	/* Only one trimfs thread are allowed to work at the same time. */
	FUNC0(&osb->obs_trim_fs_mutex);

	FUNC3(lockres);
	FUNC1(OCFS2_LOCK_TYPE_TRIM_FS, 0, 0, lockres->l_name);
	FUNC2(osb, lockres, OCFS2_LOCK_TYPE_TRIM_FS,
				   &ocfs2_trim_fs_lops, osb);
}