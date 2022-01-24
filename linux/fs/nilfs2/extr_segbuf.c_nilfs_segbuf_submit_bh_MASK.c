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
struct nilfs_write_info {scalar_t__ nr_vecs; scalar_t__ end; scalar_t__ bio; scalar_t__ blocknr; int /*<<< orphan*/  nilfs; } ;
struct nilfs_segment_buffer {int dummy; } ;
struct buffer_head {int b_size; int /*<<< orphan*/  b_page; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int FUNC5 (struct nilfs_segment_buffer*,struct nilfs_write_info*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct nilfs_segment_buffer *segbuf,
				  struct nilfs_write_info *wi,
				  struct buffer_head *bh, int mode)
{
	int len, err;

	FUNC0(wi->nr_vecs <= 0);
 repeat:
	if (!wi->bio) {
		wi->bio = FUNC4(wi->nilfs, wi->blocknr + wi->end,
					      wi->nr_vecs);
		if (FUNC6(!wi->bio))
			return -ENOMEM;
	}

	len = FUNC2(wi->bio, bh->b_page, bh->b_size, FUNC1(bh));
	if (len == bh->b_size) {
		wi->end++;
		return 0;
	}
	/* bio is FULL */
	err = FUNC5(segbuf, wi, mode, 0);
	/* never submit current bh */
	if (FUNC3(!err))
		goto repeat;
	return err;
}