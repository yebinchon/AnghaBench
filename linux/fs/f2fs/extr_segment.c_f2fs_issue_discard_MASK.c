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
struct seg_entry {int /*<<< orphan*/  discard_map; } ;
struct f2fs_sb_info {int /*<<< orphan*/  discard_blks; } ;
struct block_device {int dummy; } ;
typedef  scalar_t__ sector_t ;
typedef  scalar_t__ block_t ;

/* Variables and functions */
 unsigned int FUNC0 (struct f2fs_sb_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct f2fs_sb_info*,scalar_t__) ; 
 int FUNC2 (struct f2fs_sb_info*,struct block_device*,scalar_t__,scalar_t__) ; 
 struct block_device* FUNC3 (struct f2fs_sb_info*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 
 struct seg_entry* FUNC5 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct f2fs_sb_info *sbi,
				block_t blkstart, block_t blklen)
{
	sector_t start = blkstart, len = 0;
	struct block_device *bdev;
	struct seg_entry *se;
	unsigned int offset;
	block_t i;
	int err = 0;

	bdev = FUNC3(sbi, blkstart, NULL);

	for (i = blkstart; i < blkstart + blklen; i++, len++) {
		if (i != start) {
			struct block_device *bdev2 =
				FUNC3(sbi, i, NULL);

			if (bdev2 != bdev) {
				err = FUNC2(sbi, bdev,
						start, len);
				if (err)
					return err;
				bdev = bdev2;
				start = i;
				len = 0;
			}
		}

		se = FUNC5(sbi, FUNC1(sbi, i));
		offset = FUNC0(sbi, i);

		if (!FUNC4(offset, se->discard_map))
			sbi->discard_blks--;
	}

	if (len)
		err = FUNC2(sbi, bdev, start, len);
	return err;
}