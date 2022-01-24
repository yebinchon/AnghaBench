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
struct iomap_dio {int dummy; } ;
struct iomap {int /*<<< orphan*/  bdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  bi_sector; } ;
struct bio {int /*<<< orphan*/  bi_end_io; struct iomap_dio* bi_private; TYPE_1__ bi_iter; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int REQ_IDLE ; 
 int /*<<< orphan*/  REQ_OP_WRITE ; 
 int REQ_SYNC ; 
 struct page* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*,struct page*,unsigned int,int /*<<< orphan*/ ) ; 
 struct bio* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  iomap_dio_bio_end_io ; 
 int /*<<< orphan*/  FUNC6 (struct iomap_dio*,struct iomap*,struct bio*) ; 
 int /*<<< orphan*/  FUNC7 (struct iomap*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct iomap_dio *dio, struct iomap *iomap, loff_t pos,
		unsigned len)
{
	struct page *page = FUNC0(0);
	int flags = REQ_SYNC | REQ_IDLE;
	struct bio *bio;

	bio = FUNC2(GFP_KERNEL, 1);
	FUNC3(bio, iomap->bdev);
	bio->bi_iter.bi_sector = FUNC7(iomap, pos);
	bio->bi_private = dio;
	bio->bi_end_io = iomap_dio_bio_end_io;

	FUNC5(page);
	FUNC1(bio, page, len, 0);
	FUNC4(bio, REQ_OP_WRITE, flags);
	FUNC6(dio, iomap, bio);
}