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
typedef  scalar_t__ u64 ;
struct inode {int dummy; } ;
struct TYPE_3__ {scalar_t__ ar_quota; } ;
struct gfs2_sbd {TYPE_1__ sd_args; } ;
struct TYPE_4__ {int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; } ;
struct gfs2_inode {int /*<<< orphan*/  i_gl; TYPE_2__ i_inode; } ;
struct gfs2_alloc_parms {int target; } ;
struct buffer_head {int /*<<< orphan*/  b_data; } ;

/* Variables and functions */
 struct gfs2_inode* FUNC0 (struct inode*) ; 
 scalar_t__ GFS2_QUOTA_OFF ; 
 struct gfs2_sbd* FUNC1 (struct inode*) ; 
 scalar_t__ RES_DINODE ; 
 int /*<<< orphan*/  RES_JDATA ; 
 scalar_t__ RES_QUOTA ; 
 scalar_t__ RES_RG_BIT ; 
 scalar_t__ RES_STATFS ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (struct gfs2_inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct gfs2_inode*) ; 
 int FUNC6 (struct gfs2_inode*,struct gfs2_alloc_parms*) ; 
 scalar_t__ FUNC7 (struct gfs2_inode*) ; 
 scalar_t__ FUNC8 (struct gfs2_inode*) ; 
 scalar_t__ FUNC9 (struct gfs2_inode*) ; 
 int FUNC10 (struct gfs2_inode*,struct buffer_head**) ; 
 int FUNC11 (struct gfs2_inode*,struct gfs2_alloc_parms*) ; 
 int /*<<< orphan*/  FUNC12 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 int FUNC14 (struct gfs2_sbd*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct gfs2_sbd*) ; 
 int FUNC16 (struct gfs2_inode*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*,scalar_t__) ; 

__attribute__((used)) static int FUNC18(struct inode *inode, u64 size)
{
	struct gfs2_inode *ip = FUNC0(inode);
	struct gfs2_sbd *sdp = FUNC1(inode);
	struct gfs2_alloc_parms ap = { .target = 1, };
	struct buffer_head *dibh;
	int error;
	int unstuff = 0;

	if (FUNC8(ip) && size > FUNC9(ip)) {
		error = FUNC11(ip, &ap);
		if (error)
			return error;

		error = FUNC6(ip, &ap);
		if (error)
			goto do_grow_qunlock;
		unstuff = 1;
	}

	error = FUNC14(sdp, RES_DINODE + RES_STATFS + RES_RG_BIT +
				 (unstuff &&
				  FUNC7(ip) ? RES_JDATA : 0) +
				 (sdp->sd_args.ar_quota == GFS2_QUOTA_OFF ?
				  0 : RES_QUOTA), 0);
	if (error)
		goto do_grow_release;

	if (unstuff) {
		error = FUNC16(ip, NULL);
		if (error)
			goto do_end_trans;
	}

	error = FUNC10(ip, &dibh);
	if (error)
		goto do_end_trans;

	FUNC17(inode, size);
	ip->i_inode.i_mtime = ip->i_inode.i_ctime = FUNC3(&ip->i_inode);
	FUNC13(ip->i_gl, dibh);
	FUNC4(ip, dibh->b_data);
	FUNC2(dibh);

do_end_trans:
	FUNC15(sdp);
do_grow_release:
	if (unstuff) {
		FUNC5(ip);
do_grow_qunlock:
		FUNC12(ip);
	}
	return error;
}