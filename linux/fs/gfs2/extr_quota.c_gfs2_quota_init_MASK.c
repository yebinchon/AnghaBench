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
typedef  int u32 ;
struct kqid {int dummy; } ;
struct TYPE_2__ {unsigned int sb_bsize_shift; } ;
struct gfs2_sbd {unsigned int sd_quota_slots; unsigned int sd_qc_per_block; int /*<<< orphan*/  sd_quota_count; int /*<<< orphan*/  sd_quota_list; int /*<<< orphan*/ * sd_quota_bitmap; int /*<<< orphan*/  sd_qc_inode; TYPE_1__ sd_sb; } ;
struct gfs2_quota_data {unsigned int qd_slot; int qd_slot_count; int /*<<< orphan*/  qd_hlist; int /*<<< orphan*/  qd_list; scalar_t__ qd_change; int /*<<< orphan*/  qd_flags; } ;
struct gfs2_quota_change {int /*<<< orphan*/  qc_id; int /*<<< orphan*/  qc_flags; int /*<<< orphan*/  qc_change; } ;
struct gfs2_meta_header {int dummy; } ;
struct gfs2_inode {int /*<<< orphan*/  i_gl; int /*<<< orphan*/  i_inode; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  scalar_t__ s64 ;
typedef  enum quota_type { ____Placeholder_quota_type } quota_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (unsigned int,int) ; 
 int EIO ; 
 int ENOMEM ; 
 int GFP_NOFS ; 
 struct gfs2_inode* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFS2_METATYPE_QC ; 
 int GFS2_QCF_USER ; 
 int GRPQUOTA ; 
 int /*<<< orphan*/  PAGE_KERNEL ; 
 int /*<<< orphan*/  QDF_CHANGE ; 
 int USRQUOTA ; 
 int __GFP_NOWARN ; 
 int __GFP_ZERO ; 
 int /*<<< orphan*/ * FUNC3 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC8 (struct gfs2_sbd*,char*,unsigned int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC10 (int /*<<< orphan*/ *,unsigned int,int*,unsigned int*,int*) ; 
 struct buffer_head* FUNC11 (int /*<<< orphan*/ ,unsigned int,int) ; 
 scalar_t__ FUNC12 (struct gfs2_sbd*,struct buffer_head*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC13 (struct gfs2_sbd*,struct kqid) ; 
 int /*<<< orphan*/  FUNC14 (struct gfs2_sbd*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned int FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_user_ns ; 
 int /*<<< orphan*/ * FUNC17 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct kqid FUNC19 (int /*<<< orphan*/ *,int,int) ; 
 struct gfs2_quota_data* FUNC20 (unsigned int,struct gfs2_sbd*,struct kqid) ; 
 int /*<<< orphan*/ * qd_hash_table ; 
 int /*<<< orphan*/  qd_lock ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (unsigned int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (unsigned int) ; 
 int /*<<< orphan*/  FUNC26 (unsigned int,int /*<<< orphan*/ *) ; 

int FUNC27(struct gfs2_sbd *sdp)
{
	struct gfs2_inode *ip = FUNC2(sdp->sd_qc_inode);
	u64 size = FUNC16(sdp->sd_qc_inode);
	unsigned int blocks = size >> sdp->sd_sb.sb_bsize_shift;
	unsigned int x, slot = 0;
	unsigned int found = 0;
	unsigned int hash;
	unsigned int bm_size;
	u64 dblock;
	u32 extlen = 0;
	int error;

	if (FUNC9(sdp->sd_qc_inode, 1, 64 << 20))
		return -EIO;

	sdp->sd_quota_slots = blocks * sdp->sd_qc_per_block;
	bm_size = FUNC1(sdp->sd_quota_slots, 8 * sizeof(unsigned long));
	bm_size *= sizeof(unsigned long);
	error = -ENOMEM;
	sdp->sd_quota_bitmap = FUNC17(bm_size, GFP_NOFS | __GFP_NOWARN);
	if (sdp->sd_quota_bitmap == NULL)
		sdp->sd_quota_bitmap = FUNC3(bm_size, GFP_NOFS |
						 __GFP_ZERO, PAGE_KERNEL);
	if (!sdp->sd_quota_bitmap)
		return error;

	for (x = 0; x < blocks; x++) {
		struct buffer_head *bh;
		const struct gfs2_quota_change *qc;
		unsigned int y;

		if (!extlen) {
			int new = 0;
			error = FUNC10(&ip->i_inode, x, &new, &dblock, &extlen);
			if (error)
				goto fail;
		}
		error = -EIO;
		bh = FUNC11(ip->i_gl, dblock, extlen);
		if (!bh)
			goto fail;
		if (FUNC12(sdp, bh, GFS2_METATYPE_QC)) {
			FUNC7(bh);
			goto fail;
		}

		qc = (const struct gfs2_quota_change *)(bh->b_data + sizeof(struct gfs2_meta_header));
		for (y = 0; y < sdp->sd_qc_per_block && slot < sdp->sd_quota_slots;
		     y++, slot++) {
			struct gfs2_quota_data *qd;
			s64 qc_change = FUNC6(qc->qc_change);
			u32 qc_flags = FUNC5(qc->qc_flags);
			enum quota_type qtype = (qc_flags & GFS2_QCF_USER) ?
						USRQUOTA : GRPQUOTA;
			struct kqid qc_id = FUNC19(&init_user_ns, qtype,
						      FUNC5(qc->qc_id));
			qc++;
			if (!qc_change)
				continue;

			hash = FUNC13(sdp, qc_id);
			qd = FUNC20(hash, sdp, qc_id);
			if (qd == NULL) {
				FUNC7(bh);
				goto fail;
			}

			FUNC21(QDF_CHANGE, &qd->qd_flags);
			qd->qd_change = qc_change;
			qd->qd_slot = slot;
			qd->qd_slot_count = 1;

			FUNC22(&qd_lock);
			FUNC0(FUNC26(slot, sdp->sd_quota_bitmap));
			FUNC18(&qd->qd_list, &sdp->sd_quota_list);
			FUNC4(&sdp->sd_quota_count);
			FUNC24(&qd_lock);

			FUNC23(hash);
			FUNC15(&qd->qd_hlist, &qd_hash_table[hash]);
			FUNC25(hash);

			found++;
		}

		FUNC7(bh);
		dblock++;
		extlen--;
	}

	if (found)
		FUNC8(sdp, "found %u quota changes\n", found);

	return 0;

fail:
	FUNC14(sdp);
	return error;
}