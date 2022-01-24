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
typedef  int u64 ;
typedef  int u32 ;
struct ocfs2_super {int s_clustersize_bits; } ;
struct ocfs2_extent_rec {unsigned long long e_blkno; int e_flags; int /*<<< orphan*/  e_leaf_clusters; int /*<<< orphan*/  e_cpos; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {int ip_dyn_features; } ;

/* Variables and functions */
 int EAGAIN ; 
 int OCFS2_EXT_REFCOUNTED ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int OCFS2_INLINE_DATA_FL ; 
 struct ocfs2_super* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct inode*,struct buffer_head*,int,int /*<<< orphan*/ *,struct ocfs2_extent_rec*,int*) ; 
 scalar_t__ FUNC7 (struct buffer_head*,int) ; 

int FUNC8(struct inode *inode, struct buffer_head *di_bh,
		       u64 map_start, u64 map_len)
{
	int ret = 0, is_last;
	u32 mapping_end, cpos;
	struct ocfs2_super *osb = FUNC1(inode->i_sb);
	struct ocfs2_extent_rec rec;

	if (FUNC0(inode)->ip_dyn_features & OCFS2_INLINE_DATA_FL) {
		if (FUNC7(di_bh, map_start + map_len))
			return ret;
		else
			return -EAGAIN;
	}

	cpos = map_start >> osb->s_clustersize_bits;
	mapping_end = FUNC5(inode->i_sb,
					       map_start + map_len);
	is_last = 0;
	while (cpos < mapping_end && !is_last) {
		ret = FUNC6(inode, di_bh, cpos,
						 NULL, &rec, &is_last);
		if (ret) {
			FUNC4(ret);
			goto out;
		}

		if (rec.e_blkno == 0ULL)
			break;

		if (rec.e_flags & OCFS2_EXT_REFCOUNTED)
			break;

		cpos = FUNC3(rec.e_cpos) +
			FUNC2(rec.e_leaf_clusters);
	}

	if (cpos < mapping_end)
		ret = -EAGAIN;
out:
	return ret;
}