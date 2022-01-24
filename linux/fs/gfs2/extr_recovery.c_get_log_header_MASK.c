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
struct gfs2_sbd {int dummy; } ;
struct gfs2_log_header_host {int dummy; } ;
struct gfs2_log_header {int dummy; } ;
struct gfs2_jdesc {int /*<<< orphan*/  jd_inode; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 struct gfs2_sbd* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct gfs2_sbd*,struct gfs2_log_header const*,unsigned int,struct gfs2_log_header_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int FUNC3 (struct gfs2_jdesc*,unsigned int,struct buffer_head**) ; 

__attribute__((used)) static int FUNC4(struct gfs2_jdesc *jd, unsigned int blk,
			  struct gfs2_log_header_host *head)
{
	struct gfs2_sbd *sdp = FUNC0(jd->jd_inode);
	struct buffer_head *bh;
	int error;

	error = FUNC3(jd, blk, &bh);
	if (error)
		return error;

	error = FUNC1(sdp, (const struct gfs2_log_header *)bh->b_data,
				 blk, head);
	FUNC2(bh);

	return error;
}