#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int u32 ;
typedef  int u16 ;
struct ocfs2_extent_rec {unsigned long long e_blkno; int e_flags; int /*<<< orphan*/  e_cpos; int /*<<< orphan*/  e_leaf_clusters; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct file {TYPE_1__* f_mapping; } ;
struct buffer_head {int dummy; } ;
typedef  int loff_t ;
struct TYPE_6__ {int ip_dyn_features; int /*<<< orphan*/  ip_alloc_sem; } ;
struct TYPE_5__ {int s_clustersize_bits; } ;
struct TYPE_4__ {struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENXIO ; 
 int OCFS2_EXT_UNWRITTEN ; 
 TYPE_3__* FUNC1 (struct inode*) ; 
 int OCFS2_INLINE_DATA_FL ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 
 int SEEK_DATA ; 
 int SEEK_HOLE ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct inode*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int) ; 
 int FUNC10 (struct inode*,struct buffer_head*,int,int*,struct ocfs2_extent_rec*,unsigned int*) ; 
 int FUNC11 (struct inode*,struct buffer_head**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

int FUNC14(struct file *file, loff_t *offset, int whence)
{
	struct inode *inode = file->f_mapping->host;
	int ret;
	unsigned int is_last = 0, is_data = 0;
	u16 cs_bits = FUNC2(inode->i_sb)->s_clustersize_bits;
	u32 cpos, cend, clen, hole_size;
	u64 extoff, extlen;
	struct buffer_head *di_bh = NULL;
	struct ocfs2_extent_rec rec;

	FUNC0(whence != SEEK_DATA && whence != SEEK_HOLE);

	ret = FUNC11(inode, &di_bh, 0);
	if (ret) {
		FUNC8(ret);
		goto out;
	}

	FUNC4(&FUNC1(inode)->ip_alloc_sem);

	if (*offset >= FUNC5(inode)) {
		ret = -ENXIO;
		goto out_unlock;
	}

	if (FUNC1(inode)->ip_dyn_features & OCFS2_INLINE_DATA_FL) {
		if (whence == SEEK_HOLE)
			*offset = FUNC5(inode);
		goto out_unlock;
	}

	clen = 0;
	cpos = *offset >> cs_bits;
	cend = FUNC9(inode->i_sb, FUNC5(inode));

	while (cpos < cend && !is_last) {
		ret = FUNC10(inode, di_bh, cpos, &hole_size,
						 &rec, &is_last);
		if (ret) {
			FUNC8(ret);
			goto out_unlock;
		}

		extoff = cpos;
		extoff <<= cs_bits;

		if (rec.e_blkno == 0ULL) {
			clen = hole_size;
			is_data = 0;
		} else {
			clen = FUNC6(rec.e_leaf_clusters) -
				(cpos - FUNC7(rec.e_cpos));
			is_data = (rec.e_flags & OCFS2_EXT_UNWRITTEN) ?  0 : 1;
		}

		if ((!is_data && whence == SEEK_HOLE) ||
		    (is_data && whence == SEEK_DATA)) {
			if (extoff > *offset)
				*offset = extoff;
			goto out_unlock;
		}

		if (!is_last)
			cpos += clen;
	}

	if (whence == SEEK_HOLE) {
		extoff = cpos;
		extoff <<= cs_bits;
		extlen = clen;
		extlen <<=  cs_bits;

		if ((extoff + extlen) > FUNC5(inode))
			extlen = FUNC5(inode) - extoff;
		extoff += extlen;
		if (extoff > *offset)
			*offset = extoff;
		goto out_unlock;
	}

	ret = -ENXIO;

out_unlock:

	FUNC3(di_bh);

	FUNC13(&FUNC1(inode)->ip_alloc_sem);

	FUNC12(inode, 0);
out:
	return ret;
}