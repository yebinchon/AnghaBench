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
struct ocfs2_dentry_lock {int /*<<< orphan*/  dl_lockres; } ;
struct dentry {int /*<<< orphan*/  d_sb; struct ocfs2_dentry_lock* d_fsdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DLM_LOCK_EX ; 
 int DLM_LOCK_PR ; 
 int EROFS ; 
 struct ocfs2_super* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct ocfs2_super*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct ocfs2_super*) ; 
 scalar_t__ FUNC5 (struct ocfs2_super*) ; 

int FUNC6(struct dentry *dentry, int ex)
{
	int ret;
	int level = ex ? DLM_LOCK_EX : DLM_LOCK_PR;
	struct ocfs2_dentry_lock *dl = dentry->d_fsdata;
	struct ocfs2_super *osb = FUNC1(dentry->d_sb);

	FUNC0(!dl);

	if (FUNC4(osb)) {
		if (ex)
			return -EROFS;
		return 0;
	}

	if (FUNC5(osb))
		return 0;

	ret = FUNC3(osb, &dl->dl_lockres, level, 0, 0);
	if (ret < 0)
		FUNC2(ret);

	return ret;
}