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
struct page {int dummy; } ;
struct gfs2_sbd {int /*<<< orphan*/  sd_log_bio; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REQ_OP_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct bio*,struct page*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  gfs2_end_log_write ; 
 struct bio* FUNC2 (struct gfs2_sbd*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC3(struct gfs2_sbd *sdp, struct page *page,
		    unsigned size, unsigned offset, u64 blkno)
{
	struct bio *bio;
	int ret;

	bio = FUNC2(sdp, blkno, &sdp->sd_log_bio, REQ_OP_WRITE,
			       gfs2_end_log_write, false);
	ret = FUNC1(bio, page, size, offset);
	if (ret == 0) {
		bio = FUNC2(sdp, blkno, &sdp->sd_log_bio,
				       REQ_OP_WRITE, gfs2_end_log_write, true);
		ret = FUNC1(bio, page, size, offset);
		FUNC0(ret == 0);
	}
}