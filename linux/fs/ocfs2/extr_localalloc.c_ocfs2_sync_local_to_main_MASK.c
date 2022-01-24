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
typedef  scalar_t__ u64 ;
struct ocfs2_super {int /*<<< orphan*/  sb; } ;
struct ocfs2_local_alloc {void* la_bitmap; int /*<<< orphan*/  la_bm_off; } ;
struct TYPE_3__ {int /*<<< orphan*/  i_total; int /*<<< orphan*/  i_used; } ;
struct TYPE_4__ {TYPE_1__ bitmap1; } ;
struct ocfs2_dinode {TYPE_2__ id1; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 struct ocfs2_local_alloc* FUNC0 (struct ocfs2_dinode*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (void*,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct inode*,struct buffer_head*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int,unsigned long long,unsigned long long) ; 

__attribute__((used)) static int FUNC8(struct ocfs2_super *osb,
				    handle_t *handle,
				    struct ocfs2_dinode *alloc,
				    struct inode *main_bm_inode,
				    struct buffer_head *main_bm_bh)
{
	int status = 0;
	int bit_off, left, count, start;
	u64 la_start_blk;
	u64 blkno;
	void *bitmap;
	struct ocfs2_local_alloc *la = FUNC0(alloc);

	FUNC6(
	     FUNC1(alloc->id1.bitmap1.i_total),
	     FUNC1(alloc->id1.bitmap1.i_used));

	if (!alloc->id1.bitmap1.i_total) {
		goto bail;
	}

	if (FUNC1(alloc->id1.bitmap1.i_used) ==
	    FUNC1(alloc->id1.bitmap1.i_total)) {
		goto bail;
	}

	la_start_blk = FUNC3(osb->sb,
						FUNC1(la->la_bm_off));
	bitmap = la->la_bitmap;
	start = count = bit_off = 0;
	left = FUNC1(alloc->id1.bitmap1.i_total);

	while ((bit_off = FUNC4(bitmap, left, start))
	       != -1) {
		if ((bit_off < left) && (bit_off == start)) {
			count++;
			start++;
			continue;
		}
		if (count) {
			blkno = la_start_blk +
				FUNC3(osb->sb,
							 start - count);

			FUNC7(
			     count, start - count,
			     (unsigned long long)la_start_blk,
			     (unsigned long long)blkno);

			status = FUNC5(handle,
							main_bm_inode,
							main_bm_bh, blkno,
							count);
			if (status < 0) {
				FUNC2(status);
				goto bail;
			}
		}
		if (bit_off >= left)
			break;
		count = 1;
		start = bit_off + 1;
	}

bail:
	if (status)
		FUNC2(status);
	return status;
}