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
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {scalar_t__ s_clustersize_bits; } ;

/* Variables and functions */
 unsigned int OCFS2_EXT_REFCOUNTED ; 
 unsigned int OCFS2_EXT_UNWRITTEN ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UINT_MAX ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC4 (struct inode*,scalar_t__,scalar_t__*,unsigned int*,unsigned int*) ; 
 int FUNC5 (struct inode*,struct buffer_head*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct inode *inode,
				       struct buffer_head *di_bh,
				       u64 zero_start, u64 zero_end,
				       u64 *range_start, u64 *range_end)
{
	int rc = 0, needs_cow = 0;
	u32 p_cpos, zero_clusters = 0;
	u32 zero_cpos =
		zero_start >> FUNC0(inode->i_sb)->s_clustersize_bits;
	u32 last_cpos = FUNC2(inode->i_sb, zero_end);
	unsigned int num_clusters = 0;
	unsigned int ext_flags = 0;

	while (zero_cpos < last_cpos) {
		rc = FUNC4(inode, zero_cpos, &p_cpos,
					&num_clusters, &ext_flags);
		if (rc) {
			FUNC1(rc);
			goto out;
		}

		if (p_cpos && !(ext_flags & OCFS2_EXT_UNWRITTEN)) {
			zero_clusters = num_clusters;
			if (ext_flags & OCFS2_EXT_REFCOUNTED)
				needs_cow = 1;
			break;
		}

		zero_cpos += num_clusters;
	}
	if (!zero_clusters) {
		*range_end = 0;
		goto out;
	}

	while ((zero_cpos + zero_clusters) < last_cpos) {
		rc = FUNC4(inode, zero_cpos + zero_clusters,
					&p_cpos, &num_clusters,
					&ext_flags);
		if (rc) {
			FUNC1(rc);
			goto out;
		}

		if (!p_cpos || (ext_flags & OCFS2_EXT_UNWRITTEN))
			break;
		if (ext_flags & OCFS2_EXT_REFCOUNTED)
			needs_cow = 1;
		zero_clusters += num_clusters;
	}
	if ((zero_cpos + zero_clusters) > last_cpos)
		zero_clusters = last_cpos - zero_cpos;

	if (needs_cow) {
		rc = FUNC5(inode, di_bh, zero_cpos,
					zero_clusters, UINT_MAX);
		if (rc) {
			FUNC1(rc);
			goto out;
		}
	}

	*range_start = FUNC3(inode->i_sb, zero_cpos);
	*range_end = FUNC3(inode->i_sb,
					     zero_cpos + zero_clusters);

out:
	return rc;
}