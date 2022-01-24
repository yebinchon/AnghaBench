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
typedef  unsigned int u64 ;
typedef  unsigned int u16 ;
struct metapath {int mp_fheight; unsigned int mp_aheight; unsigned int* mp_list; int /*<<< orphan*/ ** mp_bh; } ;
struct inode {int dummy; } ;
struct gfs2_sbd {unsigned int sd_inptrs; unsigned int sd_diptrs; } ;
struct gfs2_inode {scalar_t__ i_height; } ;
typedef  int (* gfs2_metadata_walker ) (struct metapath*,unsigned int) ;
typedef  enum walker_status { ____Placeholder_walker_status } walker_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int FUNC1 (unsigned int,unsigned int) ; 
 struct gfs2_inode* FUNC2 (struct inode*) ; 
 struct gfs2_sbd* FUNC3 (struct inode*) ; 
#define  WALK_CONTINUE 130 
#define  WALK_FOLLOW 129 
#define  WALK_STOP 128 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,unsigned int) ; 
 int FUNC6 (struct gfs2_inode*,struct metapath*,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct inode *inode, struct metapath *mp,
		u64 max_len, gfs2_metadata_walker walker)
{
	struct gfs2_inode *ip = FUNC2(inode);
	struct gfs2_sbd *sdp = FUNC3(inode);
	u64 factor = 1;
	unsigned int hgt;
	int ret;

	/*
	 * The walk starts in the lowest allocated indirect block, which may be
	 * before the position indicated by @mp.  Adjust @max_len accordingly
	 * to avoid a short walk.
	 */
	for (hgt = mp->mp_fheight - 1; hgt >= mp->mp_aheight; hgt--) {
		max_len += mp->mp_list[hgt] * factor;
		mp->mp_list[hgt] = 0;
		factor *= sdp->sd_inptrs;
	}

	for (;;) {
		u16 start = mp->mp_list[hgt];
		enum walker_status status;
		unsigned int ptrs;
		u64 len;

		/* Walk indirect block. */
		ptrs = (hgt >= 1 ? sdp->sd_inptrs : sdp->sd_diptrs) - start;
		len = ptrs * factor;
		if (len > max_len)
			ptrs = FUNC1(max_len, factor);
		status = walker(mp, ptrs);
		switch (status) {
		case WALK_STOP:
			return 1;
		case WALK_FOLLOW:
			FUNC0(mp->mp_aheight == mp->mp_fheight);
			ptrs = mp->mp_list[hgt] - start;
			len = ptrs * factor;
			break;
		case WALK_CONTINUE:
			break;
		}
		if (len >= max_len)
			break;
		max_len -= len;
		if (status == WALK_FOLLOW)
			goto fill_up_metapath;

lower_metapath:
		/* Decrease height of metapath. */
		FUNC4(mp->mp_bh[hgt]);
		mp->mp_bh[hgt] = NULL;
		mp->mp_list[hgt] = 0;
		if (!hgt)
			break;
		hgt--;
		factor *= sdp->sd_inptrs;

		/* Advance in metadata tree. */
		(mp->mp_list[hgt])++;
		if (mp->mp_list[hgt] >= sdp->sd_inptrs) {
			if (!hgt)
				break;
			goto lower_metapath;
		}

fill_up_metapath:
		/* Increase height of metapath. */
		ret = FUNC6(ip, mp, ip->i_height - 1);
		if (ret < 0)
			return ret;
		hgt += ret;
		for (; ret; ret--)
			FUNC5(factor, sdp->sd_inptrs);
		mp->mp_aheight = hgt + 1;
	}
	return 0;
}