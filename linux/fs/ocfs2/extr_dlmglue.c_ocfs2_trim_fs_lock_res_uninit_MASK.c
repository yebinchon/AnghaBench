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
struct ocfs2_lock_res {int dummy; } ;
struct ocfs2_super {int /*<<< orphan*/  obs_trim_fs_mutex; struct ocfs2_lock_res osb_trim_fs_lockres; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ocfs2_lock_res*) ; 
 int /*<<< orphan*/  FUNC2 (struct ocfs2_super*,struct ocfs2_lock_res*) ; 

void FUNC3(struct ocfs2_super *osb)
{
	struct ocfs2_lock_res *lockres = &osb->osb_trim_fs_lockres;

	FUNC2(osb, lockres);
	FUNC1(lockres);

	FUNC0(&osb->obs_trim_fs_mutex);
}