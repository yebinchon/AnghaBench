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
struct ocfs2_super {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct TYPE_2__ {int /*<<< orphan*/  ip_open_lockres; int /*<<< orphan*/  ip_inode_lockres; int /*<<< orphan*/  ip_rw_lockres; scalar_t__ ip_blkno; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 struct ocfs2_super* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (struct ocfs2_super*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 

int FUNC7(struct inode *inode)
{
	int ret;
	struct ocfs2_super *osb = FUNC2(inode->i_sb);

	FUNC0(!FUNC6(inode));

	FUNC3(0, "Inode %llu\n", (unsigned long long)FUNC1(inode)->ip_blkno);

	/* NOTE: That we don't increment any of the holder counts, nor
	 * do we add anything to a journal handle. Since this is
	 * supposed to be a new inode which the cluster doesn't know
	 * about yet, there is no need to.  As far as the LVB handling
	 * is concerned, this is basically like acquiring an EX lock
	 * on a resource which has an invalid one -- we'll set it
	 * valid when we release the EX. */

	ret = FUNC5(osb, &FUNC1(inode)->ip_rw_lockres, 1, 1);
	if (ret) {
		FUNC4(ret);
		goto bail;
	}

	/*
	 * We don't want to use DLM_LKF_LOCAL on a meta data lock as they
	 * don't use a generation in their lock names.
	 */
	ret = FUNC5(osb, &FUNC1(inode)->ip_inode_lockres, 1, 0);
	if (ret) {
		FUNC4(ret);
		goto bail;
	}

	ret = FUNC5(osb, &FUNC1(inode)->ip_open_lockres, 0, 0);
	if (ret)
		FUNC4(ret);

bail:
	return ret;
}