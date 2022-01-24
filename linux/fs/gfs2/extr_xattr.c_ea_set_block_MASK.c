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
typedef  int /*<<< orphan*/  u64 ;
struct gfs2_sbd {int sd_inptrs; } ;
struct gfs2_meta_header {int dummy; } ;
struct gfs2_inode {int i_diskflags; int /*<<< orphan*/  i_inode; int /*<<< orphan*/  i_eattr; int /*<<< orphan*/  i_gl; } ;
struct gfs2_ea_request {int dummy; } ;
struct buffer_head {scalar_t__ b_blocknr; scalar_t__ b_data; } ;
typedef  scalar_t__ __be64 ;

/* Variables and functions */
 int /*<<< orphan*/  DIO_WAIT ; 
 int EIO ; 
 int ENOSPC ; 
 int GFS2_DIF_EA_INDIRECT ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  GFS2_FORMAT_IN ; 
 int /*<<< orphan*/  GFS2_METATYPE_IN ; 
 struct gfs2_sbd* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct gfs2_inode*,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC5 (struct gfs2_inode*,void*) ; 
 int FUNC6 (struct gfs2_inode*,int /*<<< orphan*/ ,struct gfs2_ea_request*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (struct gfs2_inode*,int /*<<< orphan*/ *,unsigned int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct buffer_head*,int) ; 
 struct buffer_head* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct buffer_head**) ; 
 scalar_t__ FUNC12 (struct gfs2_sbd*,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct buffer_head*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC15 (struct gfs2_sbd*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC16(struct gfs2_inode *ip, struct gfs2_ea_request *er,
			void *private)
{
	struct gfs2_sbd *sdp = FUNC1(&ip->i_inode);
	struct buffer_head *indbh, *newbh;
	__be64 *eablk;
	int error;
	int mh_size = sizeof(struct gfs2_meta_header);

	if (ip->i_diskflags & GFS2_DIF_EA_INDIRECT) {
		__be64 *end;

		error = FUNC11(ip->i_gl, ip->i_eattr, DIO_WAIT, 0,
				       &indbh);
		if (error)
			return error;

		if (FUNC12(sdp, indbh, GFS2_METATYPE_IN)) {
			error = -EIO;
			goto out;
		}

		eablk = (__be64 *)(indbh->b_data + mh_size);
		end = eablk + sdp->sd_inptrs;

		for (; eablk < end; eablk++)
			if (!*eablk)
				break;

		if (eablk == end) {
			error = -ENOSPC;
			goto out;
		}

		FUNC14(ip->i_gl, indbh);
	} else {
		u64 blk;
		unsigned int n = 1;
		error = FUNC8(ip, &blk, &n, 0, NULL);
		if (error)
			return error;
		FUNC15(sdp, blk, 1);
		indbh = FUNC10(ip->i_gl, blk);
		FUNC14(ip->i_gl, indbh);
		FUNC13(indbh, GFS2_METATYPE_IN, GFS2_FORMAT_IN);
		FUNC9(indbh, mh_size);

		eablk = (__be64 *)(indbh->b_data + mh_size);
		*eablk = FUNC3(ip->i_eattr);
		ip->i_eattr = blk;
		ip->i_diskflags |= GFS2_DIF_EA_INDIRECT;
		FUNC7(&ip->i_inode, 1);

		eablk++;
	}

	error = FUNC4(ip, &newbh);
	if (error)
		goto out;

	*eablk = FUNC3((u64)newbh->b_blocknr);
	error = FUNC6(ip, FUNC0(newbh), er);
	FUNC2(newbh);
	if (error)
		goto out;

	if (private)
		FUNC5(ip, private);

out:
	FUNC2(indbh);
	return error;
}