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
typedef  int /*<<< orphan*/  u32 ;
struct gfs2_sbd {int dummy; } ;
struct gfs2_rgrpd {scalar_t__ rd_addr; int /*<<< orphan*/  rd_gl; TYPE_1__* rd_bits; } ;
struct gfs2_meta_header {scalar_t__ mh_type; } ;
struct gfs2_log_descriptor {int /*<<< orphan*/  ld_type; int /*<<< orphan*/  ld_data1; } ;
struct gfs2_jdesc {int /*<<< orphan*/  jd_replayed_blocks; int /*<<< orphan*/  jd_found_blocks; int /*<<< orphan*/  jd_inode; } ;
struct gfs2_inode {struct gfs2_glock* i_gl; } ;
struct gfs2_glock {int dummy; } ;
struct buffer_head {scalar_t__ b_data; int /*<<< orphan*/  b_size; } ;
typedef  int /*<<< orphan*/  __be64 ;
struct TYPE_2__ {scalar_t__ bi_bh; } ;

/* Variables and functions */
 int EIO ; 
 struct gfs2_inode* FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int GFS2_LOG_DESC_METADATA ; 
 int /*<<< orphan*/  GFS2_METATYPE_RG ; 
 struct gfs2_sbd* FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct gfs2_sbd*,char*,int,...) ; 
 struct gfs2_rgrpd* FUNC9 (struct gfs2_sbd*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC11 (struct gfs2_sbd*,struct buffer_head*) ; 
 struct buffer_head* FUNC12 (struct gfs2_glock*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct gfs2_jdesc*,int /*<<< orphan*/ *) ; 
 int FUNC14 (struct gfs2_jdesc*,int /*<<< orphan*/ ,struct buffer_head**) ; 
 scalar_t__ FUNC15 (struct gfs2_jdesc*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC18(struct gfs2_jdesc *jd, u32 start,
				struct gfs2_log_descriptor *ld, __be64 *ptr,
				int pass)
{
	struct gfs2_inode *ip = FUNC0(jd->jd_inode);
	struct gfs2_sbd *sdp = FUNC1(jd->jd_inode);
	struct gfs2_glock *gl = ip->i_gl;
	unsigned int blks = FUNC2(ld->ld_data1);
	struct buffer_head *bh_log, *bh_ip;
	u64 blkno;
	int error = 0;

	if (pass != 1 || FUNC2(ld->ld_type) != GFS2_LOG_DESC_METADATA)
		return 0;

	FUNC13(jd, &start);

	for (; blks; FUNC13(jd, &start), blks--) {
		blkno = FUNC3(*ptr++);

		jd->jd_found_blocks++;

		if (FUNC15(jd, blkno, start))
			continue;

		error = FUNC14(jd, start, &bh_log);
		if (error)
			return error;

		bh_ip = FUNC12(gl, blkno);
		FUNC17(bh_ip->b_data, bh_log->b_data, bh_log->b_size);

		if (FUNC11(sdp, bh_ip))
			error = -EIO;
		else {
			struct gfs2_meta_header *mh =
				(struct gfs2_meta_header *)bh_ip->b_data;

			if (mh->mh_type == FUNC7(GFS2_METATYPE_RG)) {
				struct gfs2_rgrpd *rgd;

				rgd = FUNC9(sdp, blkno, false);
				if (rgd && rgd->rd_addr == blkno &&
				    rgd->rd_bits && rgd->rd_bits->bi_bh) {
					FUNC8(sdp, "Replaying 0x%llx but we "
						"already have a bh!\n",
						(unsigned long long)blkno);
					FUNC8(sdp, "busy:%d, pinned:%d\n",
						FUNC5(rgd->rd_bits->bi_bh) ? 1 : 0,
						FUNC6(rgd->rd_bits->bi_bh));
					FUNC10(NULL, rgd->rd_gl, true);
				}
			}
			FUNC16(bh_ip);
		}
		FUNC4(bh_log);
		FUNC4(bh_ip);

		if (error)
			break;

		jd->jd_replayed_blocks++;
	}

	return error;
}