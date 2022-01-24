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
struct gfs2_sbd {unsigned int sd_qc_per_block; int /*<<< orphan*/  sd_quota_mutex; int /*<<< orphan*/  sd_qc_inode; } ;
struct gfs2_quota_data {unsigned int qd_slot; int /*<<< orphan*/  qd_bh_count; struct gfs2_quota_change* qd_bh_qc; struct buffer_head* qd_bh; TYPE_2__* qd_gl; } ;
struct gfs2_quota_change {int dummy; } ;
struct gfs2_meta_header {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  i_blkbits; } ;
struct gfs2_inode {int /*<<< orphan*/  i_gl; TYPE_3__ i_inode; } ;
struct buffer_head {scalar_t__ b_data; int /*<<< orphan*/  b_blocknr; int /*<<< orphan*/  b_size; int /*<<< orphan*/  b_state; } ;
struct TYPE_4__ {struct gfs2_sbd* ln_sbd; } ;
struct TYPE_5__ {TYPE_1__ gl_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DIO_WAIT ; 
 int EIO ; 
 struct gfs2_inode* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFS2_METATYPE_QC ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int FUNC3 (TYPE_3__*,unsigned int,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct buffer_head**) ; 
 scalar_t__ FUNC5 (struct gfs2_sbd*,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct gfs2_quota_data *qd)
{
	struct gfs2_sbd *sdp = qd->qd_gl->gl_name.ln_sbd;
	struct gfs2_inode *ip = FUNC1(sdp->sd_qc_inode);
	unsigned int block, offset;
	struct buffer_head *bh;
	int error;
	struct buffer_head bh_map = { .b_state = 0, .b_blocknr = 0 };

	FUNC6(&sdp->sd_quota_mutex);

	if (qd->qd_bh_count++) {
		FUNC7(&sdp->sd_quota_mutex);
		return 0;
	}

	block = qd->qd_slot / sdp->sd_qc_per_block;
	offset = qd->qd_slot % sdp->sd_qc_per_block;

	bh_map.b_size = FUNC0(ip->i_inode.i_blkbits);
	error = FUNC3(&ip->i_inode, block, &bh_map, 0);
	if (error)
		goto fail;
	error = FUNC4(ip->i_gl, bh_map.b_blocknr, DIO_WAIT, 0, &bh);
	if (error)
		goto fail;
	error = -EIO;
	if (FUNC5(sdp, bh, GFS2_METATYPE_QC))
		goto fail_brelse;

	qd->qd_bh = bh;
	qd->qd_bh_qc = (struct gfs2_quota_change *)
		(bh->b_data + sizeof(struct gfs2_meta_header) +
		 offset * sizeof(struct gfs2_quota_change));

	FUNC7(&sdp->sd_quota_mutex);

	return 0;

fail_brelse:
	FUNC2(bh);
fail:
	qd->qd_bh_count--;
	FUNC7(&sdp->sd_quota_mutex);
	return error;
}