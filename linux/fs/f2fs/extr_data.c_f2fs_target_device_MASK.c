#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct f2fs_sb_info {int s_ndevs; TYPE_2__* sb; } ;
struct block_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  bi_sector; } ;
struct bio {TYPE_1__ bi_iter; } ;
typedef  scalar_t__ block_t ;
struct TYPE_6__ {scalar_t__ start_blk; scalar_t__ end_blk; struct block_device* bdev; } ;
struct TYPE_5__ {struct block_device* s_bdev; } ;

/* Variables and functions */
 TYPE_3__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*,struct block_device*) ; 
 scalar_t__ FUNC3 (struct f2fs_sb_info*) ; 

struct block_device *FUNC4(struct f2fs_sb_info *sbi,
				block_t blk_addr, struct bio *bio)
{
	struct block_device *bdev = sbi->sb->s_bdev;
	int i;

	if (FUNC3(sbi)) {
		for (i = 0; i < sbi->s_ndevs; i++) {
			if (FUNC0(i).start_blk <= blk_addr &&
			    FUNC0(i).end_blk >= blk_addr) {
				blk_addr -= FUNC0(i).start_blk;
				bdev = FUNC0(i).bdev;
				break;
			}
		}
	}
	if (bio) {
		FUNC2(bio, bdev);
		bio->bi_iter.bi_sector = FUNC1(blk_addr);
	}
	return bdev;
}