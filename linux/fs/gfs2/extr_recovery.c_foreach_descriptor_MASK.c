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
typedef  unsigned int u32 ;
struct gfs2_sbd {int dummy; } ;
struct gfs2_log_header_host {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mh_type; } ;
struct gfs2_log_descriptor {TYPE_1__ ld_header; int /*<<< orphan*/  ld_length; } ;
struct gfs2_jdesc {int /*<<< orphan*/  jd_inode; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFS2_METATYPE_LD ; 
 scalar_t__ GFS2_METATYPE_LH ; 
 struct gfs2_sbd* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int FUNC4 (struct gfs2_jdesc*,unsigned int,struct gfs2_log_header_host*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct gfs2_sbd*,struct buffer_head*) ; 
 scalar_t__ FUNC7 (struct gfs2_sbd*,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct gfs2_jdesc*,unsigned int*) ; 
 int FUNC9 (struct gfs2_jdesc*,unsigned int,struct buffer_head**) ; 
 int FUNC10 (struct gfs2_jdesc*,unsigned int,struct gfs2_log_descriptor*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC11(struct gfs2_jdesc *jd, u32 start,
			      unsigned int end, int pass)
{
	struct gfs2_sbd *sdp = FUNC1(jd->jd_inode);
	struct buffer_head *bh;
	struct gfs2_log_descriptor *ld;
	int error = 0;
	u32 length;
	__be64 *ptr;
	unsigned int offset = sizeof(struct gfs2_log_descriptor);
	offset += sizeof(__be64) - 1;
	offset &= ~(sizeof(__be64) - 1);

	while (start != end) {
		error = FUNC9(jd, start, &bh);
		if (error)
			return error;
		if (FUNC6(sdp, bh)) {
			FUNC3(bh);
			return -EIO;
		}
		ld = (struct gfs2_log_descriptor *)bh->b_data;
		length = FUNC2(ld->ld_length);

		if (FUNC2(ld->ld_header.mh_type) == GFS2_METATYPE_LH) {
			struct gfs2_log_header_host lh;
			error = FUNC4(jd, start, &lh);
			if (!error) {
				FUNC8(jd, &start);
				FUNC3(bh);
				continue;
			}
			if (error == 1) {
				FUNC5(FUNC0(jd->jd_inode));
				error = -EIO;
			}
			FUNC3(bh);
			return error;
		} else if (FUNC7(sdp, bh, GFS2_METATYPE_LD)) {
			FUNC3(bh);
			return -EIO;
		}
		ptr = (__be64 *)(bh->b_data + offset);
		error = FUNC10(jd, start, ld, ptr, pass);
		if (error) {
			FUNC3(bh);
			return error;
		}

		while (length--)
			FUNC8(jd, &start);

		FUNC3(bh);
	}

	return 0;
}