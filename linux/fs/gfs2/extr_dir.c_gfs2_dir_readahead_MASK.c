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
typedef  unsigned int u32 ;
struct inode {int dummy; } ;
struct gfs2_inode {int /*<<< orphan*/ * i_hash_cache; struct gfs2_glock* i_gl; } ;
struct gfs2_glock {int dummy; } ;
struct file_ra_state {unsigned int start; } ;
struct buffer_head {int /*<<< orphan*/  b_end_io; } ;
typedef  int /*<<< orphan*/  pgoff_t ;

/* Variables and functions */
 struct gfs2_inode* FUNC0 (struct inode*) ; 
 unsigned int MAX_RA_BLOCKS ; 
 int REQ_META ; 
 int /*<<< orphan*/  REQ_OP_READ ; 
 int REQ_PRIO ; 
 int REQ_RAHEAD ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 scalar_t__ FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  end_buffer_read_sync ; 
 struct buffer_head* FUNC4 (struct gfs2_glock*,scalar_t__,int) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,struct buffer_head*) ; 
 scalar_t__ FUNC7 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*) ; 

__attribute__((used)) static void FUNC9(struct inode *inode, unsigned hsize, u32 index,
			       struct file_ra_state *f_ra)
{
	struct gfs2_inode *ip = FUNC0(inode);
	struct gfs2_glock *gl = ip->i_gl;
	struct buffer_head *bh;
	u64 blocknr = 0, last;
	unsigned count;

	/* First check if we've already read-ahead for the whole range. */
	if (index + MAX_RA_BLOCKS < f_ra->start)
		return;

	f_ra->start = FUNC5((pgoff_t)index, f_ra->start);
	for (count = 0; count < MAX_RA_BLOCKS; count++) {
		if (f_ra->start >= hsize) /* if exceeded the hash table */
			break;

		last = blocknr;
		blocknr = FUNC1(ip->i_hash_cache[f_ra->start]);
		f_ra->start++;
		if (blocknr == last)
			continue;

		bh = FUNC4(gl, blocknr, 1);
		if (FUNC7(bh)) {
			if (FUNC3(bh)) {
				FUNC8(bh);
				FUNC2(bh);
				continue;
			}
			bh->b_end_io = end_buffer_read_sync;
			FUNC6(REQ_OP_READ,
				  REQ_RAHEAD | REQ_META | REQ_PRIO,
				  bh);
			continue;
		}
		FUNC2(bh);
	}
}