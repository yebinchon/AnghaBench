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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {unsigned int sb_bsize; } ;
struct gfs2_sbd {TYPE_1__ sd_sb; } ;
struct gfs2_meta_header {int dummy; } ;
struct gfs2_log_descriptor {int /*<<< orphan*/  ld_type; int /*<<< orphan*/  ld_data1; int /*<<< orphan*/  ld_length; } ;
struct gfs2_jdesc {int /*<<< orphan*/  jd_found_revokes; int /*<<< orphan*/  jd_inode; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 unsigned int GFS2_LOG_DESC_REVOKE ; 
 int /*<<< orphan*/  GFS2_METATYPE_LB ; 
 struct gfs2_sbd* FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct gfs2_sbd*,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct gfs2_jdesc*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct gfs2_jdesc*,int /*<<< orphan*/ ,struct buffer_head**) ; 
 int FUNC7 (struct gfs2_jdesc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct gfs2_jdesc *jd, u32 start,
				   struct gfs2_log_descriptor *ld, __be64 *ptr,
				   int pass)
{
	struct gfs2_sbd *sdp = FUNC0(jd->jd_inode);
	unsigned int blks = FUNC1(ld->ld_length);
	unsigned int revokes = FUNC1(ld->ld_data1);
	struct buffer_head *bh;
	unsigned int offset;
	u64 blkno;
	int first = 1;
	int error;

	if (pass != 0 || FUNC1(ld->ld_type) != GFS2_LOG_DESC_REVOKE)
		return 0;

	offset = sizeof(struct gfs2_log_descriptor);

	for (; blks; FUNC5(jd, &start), blks--) {
		error = FUNC6(jd, start, &bh);
		if (error)
			return error;

		if (!first)
			FUNC4(sdp, bh, GFS2_METATYPE_LB);

		while (offset + sizeof(u64) <= sdp->sd_sb.sb_bsize) {
			blkno = FUNC2(*(__be64 *)(bh->b_data + offset));

			error = FUNC7(jd, blkno, start);
			if (error < 0) {
				FUNC3(bh);
				return error;
			}
			else if (error)
				jd->jd_found_revokes++;

			if (!--revokes)
				break;
			offset += sizeof(u64);
		}

		FUNC3(bh);
		offset = sizeof(struct gfs2_meta_header);
		first = 0;
	}

	return 0;
}