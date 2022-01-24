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
typedef  unsigned int u64 ;
typedef  unsigned int u32 ;
struct ocfs2_super {unsigned int s_clustersize_bits; TYPE_1__* sb; } ;
struct ocfs2_extent_rec {unsigned long long e_blkno; int e_flags; int /*<<< orphan*/  e_leaf_clusters; int /*<<< orphan*/  e_cpos; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct fiemap_extent_info {int dummy; } ;
struct buffer_head {int dummy; } ;
struct TYPE_4__ {int ip_dyn_features; int /*<<< orphan*/  ip_alloc_sem; } ;
struct TYPE_3__ {unsigned int s_blocksize_bits; } ;

/* Variables and functions */
 unsigned int FIEMAP_EXTENT_LAST ; 
 unsigned int FIEMAP_EXTENT_SHARED ; 
 unsigned int FIEMAP_EXTENT_UNWRITTEN ; 
 int OCFS2_EXT_REFCOUNTED ; 
 int OCFS2_EXT_UNWRITTEN ; 
 int /*<<< orphan*/  OCFS2_FIEMAP_FLAGS ; 
 TYPE_2__* FUNC0 (struct inode*) ; 
 int OCFS2_INLINE_DATA_FL ; 
 struct ocfs2_super* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct fiemap_extent_info*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct fiemap_extent_info*,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC8 (unsigned long long) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 unsigned int FUNC10 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC11 (struct inode*,struct buffer_head*,struct fiemap_extent_info*,unsigned int) ; 
 int FUNC12 (struct inode*,struct buffer_head*,unsigned int,unsigned int*,struct ocfs2_extent_rec*,int*) ; 
 scalar_t__ FUNC13 (struct inode*) ; 
 int FUNC14 (struct inode*,struct buffer_head**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

int FUNC17(struct inode *inode, struct fiemap_extent_info *fieinfo,
		 u64 map_start, u64 map_len)
{
	int ret, is_last;
	u32 mapping_end, cpos;
	unsigned int hole_size;
	struct ocfs2_super *osb = FUNC1(inode->i_sb);
	u64 len_bytes, phys_bytes, virt_bytes;
	struct buffer_head *di_bh = NULL;
	struct ocfs2_extent_rec rec;

	ret = FUNC4(fieinfo, OCFS2_FIEMAP_FLAGS);
	if (ret)
		return ret;

	ret = FUNC14(inode, &di_bh, 0);
	if (ret) {
		FUNC9(ret);
		goto out;
	}

	FUNC3(&FUNC0(inode)->ip_alloc_sem);

	/*
	 * Handle inline-data and fast symlink separately.
	 */
	if ((FUNC0(inode)->ip_dyn_features & OCFS2_INLINE_DATA_FL) ||
	    FUNC13(inode)) {
		ret = FUNC11(inode, di_bh, fieinfo, map_start);
		goto out_unlock;
	}

	cpos = map_start >> osb->s_clustersize_bits;
	mapping_end = FUNC10(inode->i_sb,
					       map_start + map_len);
	is_last = 0;
	while (cpos < mapping_end && !is_last) {
		u32 fe_flags;

		ret = FUNC12(inode, di_bh, cpos,
						 &hole_size, &rec, &is_last);
		if (ret) {
			FUNC9(ret);
			goto out_unlock;
		}

		if (rec.e_blkno == 0ULL) {
			cpos += hole_size;
			continue;
		}

		fe_flags = 0;
		if (rec.e_flags & OCFS2_EXT_UNWRITTEN)
			fe_flags |= FIEMAP_EXTENT_UNWRITTEN;
		if (rec.e_flags & OCFS2_EXT_REFCOUNTED)
			fe_flags |= FIEMAP_EXTENT_SHARED;
		if (is_last)
			fe_flags |= FIEMAP_EXTENT_LAST;
		len_bytes = (u64)FUNC6(rec.e_leaf_clusters) << osb->s_clustersize_bits;
		phys_bytes = FUNC8(rec.e_blkno) << osb->sb->s_blocksize_bits;
		virt_bytes = (u64)FUNC7(rec.e_cpos) << osb->s_clustersize_bits;

		ret = FUNC5(fieinfo, virt_bytes, phys_bytes,
					      len_bytes, fe_flags);
		if (ret)
			break;

		cpos = FUNC7(rec.e_cpos)+ FUNC6(rec.e_leaf_clusters);
	}

	if (ret > 0)
		ret = 0;

out_unlock:
	FUNC2(di_bh);

	FUNC16(&FUNC0(inode)->ip_alloc_sem);

	FUNC15(inode, 0);
out:

	return ret;
}