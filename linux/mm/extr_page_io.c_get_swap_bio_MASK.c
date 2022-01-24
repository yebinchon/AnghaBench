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
struct page {int dummy; } ;
struct block_device {int dummy; } ;
struct TYPE_2__ {int bi_sector; } ;
struct bio {int /*<<< orphan*/  bi_end_io; TYPE_1__ bi_iter; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  int /*<<< orphan*/  bio_end_io_t ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct bio*,struct page*,int,int /*<<< orphan*/ ) ; 
 struct bio* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*,struct block_device*) ; 
 int FUNC3 (struct page*) ; 
 int FUNC4 (struct page*,struct block_device**) ; 

__attribute__((used)) static struct bio *FUNC5(gfp_t gfp_flags,
				struct page *page, bio_end_io_t end_io)
{
	struct bio *bio;

	bio = FUNC1(gfp_flags, 1);
	if (bio) {
		struct block_device *bdev;

		bio->bi_iter.bi_sector = FUNC4(page, &bdev);
		FUNC2(bio, bdev);
		bio->bi_iter.bi_sector <<= PAGE_SHIFT - 9;
		bio->bi_end_io = end_io;

		FUNC0(bio, page, PAGE_SIZE * FUNC3(page), 0);
	}
	return bio;
}