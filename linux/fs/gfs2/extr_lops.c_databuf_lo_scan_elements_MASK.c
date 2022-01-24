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
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct gfs2_log_descriptor {int /*<<< orphan*/  ld_type; int /*<<< orphan*/  ld_data1; } ;
struct gfs2_jdesc {int /*<<< orphan*/  jd_replayed_blocks; int /*<<< orphan*/  jd_found_blocks; int /*<<< orphan*/  jd_inode; } ;
struct gfs2_inode {struct gfs2_glock* i_gl; } ;
struct gfs2_glock {int dummy; } ;
struct buffer_head {scalar_t__ b_data; int /*<<< orphan*/  b_size; } ;
typedef  int /*<<< orphan*/  __be64 ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 struct gfs2_inode* FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int GFS2_LOG_DESC_JDATA ; 
 int /*<<< orphan*/  GFS2_MAGIC ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct buffer_head* FUNC5 (struct gfs2_glock*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct gfs2_jdesc*,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct gfs2_jdesc*,int /*<<< orphan*/ ,struct buffer_head**) ; 
 scalar_t__ FUNC8 (struct gfs2_jdesc*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct gfs2_jdesc *jd, u32 start,
				    struct gfs2_log_descriptor *ld,
				    __be64 *ptr, int pass)
{
	struct gfs2_inode *ip = FUNC0(jd->jd_inode);
	struct gfs2_glock *gl = ip->i_gl;
	unsigned int blks = FUNC1(ld->ld_data1);
	struct buffer_head *bh_log, *bh_ip;
	u64 blkno;
	u64 esc;
	int error = 0;

	if (pass != 1 || FUNC1(ld->ld_type) != GFS2_LOG_DESC_JDATA)
		return 0;

	FUNC6(jd, &start);
	for (; blks; FUNC6(jd, &start), blks--) {
		blkno = FUNC2(*ptr++);
		esc = FUNC2(*ptr++);

		jd->jd_found_blocks++;

		if (FUNC8(jd, blkno, start))
			continue;

		error = FUNC7(jd, start, &bh_log);
		if (error)
			return error;

		bh_ip = FUNC5(gl, blkno);
		FUNC10(bh_ip->b_data, bh_log->b_data, bh_log->b_size);

		/* Unescape */
		if (esc) {
			__be32 *eptr = (__be32 *)bh_ip->b_data;
			*eptr = FUNC4(GFS2_MAGIC);
		}
		FUNC9(bh_ip);

		FUNC3(bh_log);
		FUNC3(bh_ip);

		jd->jd_replayed_blocks++;
	}

	return error;
}