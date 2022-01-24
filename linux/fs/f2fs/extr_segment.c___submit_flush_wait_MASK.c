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
struct f2fs_sb_info {int dummy; } ;
struct block_device {int dummy; } ;
struct bio {int bi_opf; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FLUSH_MERGE ; 
 int /*<<< orphan*/  NOBARRIER ; 
 int REQ_OP_WRITE ; 
 int REQ_PREFLUSH ; 
 int REQ_SYNC ; 
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*,struct block_device*) ; 
 struct bio* FUNC2 (struct f2fs_sb_info*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct block_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct f2fs_sb_info *sbi,
				struct block_device *bdev)
{
	struct bio *bio;
	int ret;

	bio = FUNC2(sbi, 0, false);
	if (!bio)
		return -ENOMEM;

	bio->bi_opf = REQ_OP_WRITE | REQ_SYNC | REQ_PREFLUSH;
	FUNC1(bio, bdev);
	ret = FUNC3(bio);
	FUNC0(bio);

	FUNC5(bdev, FUNC4(sbi, NOBARRIER),
				FUNC4(sbi, FLUSH_MERGE), ret);
	return ret;
}