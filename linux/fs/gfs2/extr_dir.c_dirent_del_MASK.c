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
typedef  int u16 ;
struct gfs2_inode {int /*<<< orphan*/  i_gl; } ;
struct TYPE_2__ {scalar_t__ no_formal_ino; scalar_t__ no_addr; } ;
struct gfs2_dirent {int /*<<< orphan*/  de_rec_len; TYPE_1__ de_inum; } ;
struct buffer_head {char* b_data; int b_size; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct gfs2_inode*) ; 
 scalar_t__ FUNC3 (struct gfs2_dirent*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct buffer_head*) ; 

__attribute__((used)) static void FUNC5(struct gfs2_inode *dip, struct buffer_head *bh,
		       struct gfs2_dirent *prev, struct gfs2_dirent *cur)
{
	u16 cur_rec_len, prev_rec_len;

	if (FUNC3(cur)) {
		FUNC2(dip);
		return;
	}

	FUNC4(dip->i_gl, bh);

	/* If there is no prev entry, this is the first entry in the block.
	   The de_rec_len is already as big as it needs to be.  Just zero
	   out the inode number and return.  */

	if (!prev) {
		cur->de_inum.no_addr = 0;
		cur->de_inum.no_formal_ino = 0;
		return;
	}

	/*  Combine this dentry with the previous one.  */

	prev_rec_len = FUNC0(prev->de_rec_len);
	cur_rec_len = FUNC0(cur->de_rec_len);

	if ((char *)prev + prev_rec_len != (char *)cur)
		FUNC2(dip);
	if ((char *)cur + cur_rec_len > bh->b_data + bh->b_size)
		FUNC2(dip);

	prev_rec_len += cur_rec_len;
	prev->de_rec_len = FUNC1(prev_rec_len);
}