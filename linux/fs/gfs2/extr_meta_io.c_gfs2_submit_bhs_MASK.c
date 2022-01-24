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
struct buffer_head {int b_blocknr; int b_size; int /*<<< orphan*/  b_page; int /*<<< orphan*/  b_bdev; } ;
struct TYPE_2__ {int bi_sector; scalar_t__ bi_size; } ;
struct bio {int /*<<< orphan*/  bi_end_io; TYPE_1__ bi_iter; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct bio* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*,int,int) ; 
 int /*<<< orphan*/  gfs2_meta_read_endio ; 
 int /*<<< orphan*/  FUNC6 (struct bio*) ; 

__attribute__((used)) static void FUNC7(int op, int op_flags, struct buffer_head *bhs[],
			    int num)
{
	while (num > 0) {
		struct buffer_head *bh = *bhs;
		struct bio *bio;

		bio = FUNC3(GFP_NOIO, num);
		bio->bi_iter.bi_sector = bh->b_blocknr * (bh->b_size >> 9);
		FUNC4(bio, bh->b_bdev);
		while (num > 0) {
			bh = *bhs;
			if (!FUNC2(bio, bh->b_page, bh->b_size, FUNC1(bh))) {
				FUNC0(bio->bi_iter.bi_size == 0);
				break;
			}
			bhs++;
			num--;
		}
		bio->bi_end_io = gfs2_meta_read_endio;
		FUNC5(bio, op, op_flags);
		FUNC6(bio);
	}
}