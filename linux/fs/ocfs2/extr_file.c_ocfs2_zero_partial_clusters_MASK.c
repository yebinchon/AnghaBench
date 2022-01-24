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
typedef  unsigned int u64 ;
struct ocfs2_super {unsigned int s_clustersize; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {scalar_t__ ip_blkno; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_INODE_UPDATE_CREDITS ; 
 struct ocfs2_super* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct inode*,int) ; 
 int FUNC8 (struct inode*,int /*<<< orphan*/ *,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long long,unsigned long long,unsigned long long) ; 
 int /*<<< orphan*/  FUNC10 (unsigned long long,unsigned long long) ; 
 int /*<<< orphan*/  FUNC11 (unsigned long long,unsigned long long) ; 

__attribute__((used)) static int FUNC12(struct inode *inode,
				       u64 start, u64 len)
{
	int ret = 0;
	u64 tmpend = 0;
	u64 end = start + len;
	struct ocfs2_super *osb = FUNC2(inode->i_sb);
	unsigned int csize = osb->s_clustersize;
	handle_t *handle;

	/*
	 * The "start" and "end" values are NOT necessarily part of
	 * the range whose allocation is being deleted. Rather, this
	 * is what the user passed in with the request. We must zero
	 * partial clusters here. There's no need to worry about
	 * physical allocation - the zeroing code knows to skip holes.
	 */
	FUNC9(
		(unsigned long long)FUNC1(inode)->ip_blkno,
		(unsigned long long)start, (unsigned long long)end);

	/*
	 * If both edges are on a cluster boundary then there's no
	 * zeroing required as the region is part of the allocation to
	 * be truncated.
	 */
	if ((start & (csize - 1)) == 0 && (end & (csize - 1)) == 0)
		goto out;

	handle = FUNC6(osb, OCFS2_INODE_UPDATE_CREDITS);
	if (FUNC0(handle)) {
		ret = FUNC3(handle);
		FUNC4(ret);
		goto out;
	}

	/*
	 * If start is on a cluster boundary and end is somewhere in another
	 * cluster, we have not COWed the cluster starting at start, unless
	 * end is also within the same cluster. So, in this case, we skip this
	 * first call to ocfs2_zero_range_for_truncate() truncate and move on
	 * to the next one.
	 */
	if ((start & (csize - 1)) != 0) {
		/*
		 * We want to get the byte offset of the end of the 1st
		 * cluster.
		 */
		tmpend = (u64)osb->s_clustersize +
			(start & ~(osb->s_clustersize - 1));
		if (tmpend > end)
			tmpend = end;

		FUNC10(
			(unsigned long long)start,
			(unsigned long long)tmpend);

		ret = FUNC8(inode, handle, start,
						    tmpend);
		if (ret)
			FUNC4(ret);
	}

	if (tmpend < end) {
		/*
		 * This may make start and end equal, but the zeroing
		 * code will skip any work in that case so there's no
		 * need to catch it up here.
		 */
		start = end & ~(osb->s_clustersize - 1);

		FUNC11(
			(unsigned long long)start, (unsigned long long)end);

		ret = FUNC8(inode, handle, start, end);
		if (ret)
			FUNC4(ret);
	}
	FUNC7(handle, inode, 1);

	FUNC5(osb, handle);
out:
	return ret;
}