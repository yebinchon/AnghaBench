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
struct inode {int dummy; } ;
struct gfs2_trans {int /*<<< orphan*/  tr_flags; } ;
struct gfs2_sbd {TYPE_1__* sd_vfs; } ;
typedef  unsigned int loff_t ;
struct TYPE_4__ {struct gfs2_trans* journal_info; } ;
struct TYPE_3__ {unsigned int s_blocksize; } ;

/* Variables and functions */
 unsigned int GFS2_JTRUNC_REVOKES ; 
 struct gfs2_sbd* FUNC0 (struct inode*) ; 
 unsigned int PAGE_MASK ; 
 unsigned int PAGE_SIZE ; 
 int /*<<< orphan*/  RES_DINODE ; 
 int /*<<< orphan*/  TR_TOUCHED ; 
 TYPE_2__* current ; 
 int FUNC1 (struct gfs2_sbd*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct gfs2_sbd*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC5(struct inode *inode, loff_t offset,
					 loff_t length)
{
	struct gfs2_sbd *sdp = FUNC0(inode);
	loff_t max_chunk = GFS2_JTRUNC_REVOKES * sdp->sd_vfs->s_blocksize;
	int error;

	while (length) {
		struct gfs2_trans *tr;
		loff_t chunk;
		unsigned int offs;

		chunk = length;
		if (chunk > max_chunk)
			chunk = max_chunk;

		offs = offset & ~PAGE_MASK;
		if (offs && chunk > PAGE_SIZE)
			chunk = offs + ((chunk - offs) & PAGE_MASK);

		FUNC4(inode, offset, chunk);
		offset += chunk;
		length -= chunk;

		tr = current->journal_info;
		if (!FUNC3(TR_TOUCHED, &tr->tr_flags))
			continue;

		FUNC2(sdp);
		error = FUNC1(sdp, RES_DINODE, GFS2_JTRUNC_REVOKES);
		if (error)
			return error;
	}
	return 0;
}