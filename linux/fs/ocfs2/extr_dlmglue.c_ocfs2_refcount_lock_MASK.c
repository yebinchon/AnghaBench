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
struct ocfs2_lock_res {struct ocfs2_super* l_priv; } ;
struct ocfs2_refcount_tree {struct ocfs2_lock_res rf_lockres; } ;

/* Variables and functions */
 int DLM_LOCK_EX ; 
 int DLM_LOCK_PR ; 
 int EROFS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct ocfs2_super*,struct ocfs2_lock_res*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct ocfs2_super*) ; 
 scalar_t__ FUNC3 (struct ocfs2_super*) ; 

int FUNC4(struct ocfs2_refcount_tree *ref_tree, int ex)
{
	int status;
	int level = ex ? DLM_LOCK_EX : DLM_LOCK_PR;
	struct ocfs2_lock_res *lockres = &ref_tree->rf_lockres;
	struct ocfs2_super *osb = lockres->l_priv;


	if (FUNC2(osb))
		return -EROFS;

	if (FUNC3(osb))
		return 0;

	status = FUNC1(osb, lockres, level, 0, 0);
	if (status < 0)
		FUNC0(status);

	return status;
}