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
struct dio_submit {int /*<<< orphan*/  logical_offset_in_bio; scalar_t__ boundary; struct bio* bio; int /*<<< orphan*/  (* submit_io ) (struct bio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct dio {scalar_t__ op; int /*<<< orphan*/  bio_cookie; int /*<<< orphan*/  inode; int /*<<< orphan*/  bio_disk; scalar_t__ should_dirty; scalar_t__ is_async; int /*<<< orphan*/  bio_lock; int /*<<< orphan*/  refcount; } ;
struct bio {int /*<<< orphan*/  bi_disk; struct dio* bi_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_QC_T_NONE ; 
 scalar_t__ REQ_OP_READ ; 
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*) ; 

__attribute__((used)) static inline void FUNC5(struct dio *dio, struct dio_submit *sdio)
{
	struct bio *bio = sdio->bio;
	unsigned long flags;

	bio->bi_private = dio;

	FUNC1(&dio->bio_lock, flags);
	dio->refcount++;
	FUNC2(&dio->bio_lock, flags);

	if (dio->is_async && dio->op == REQ_OP_READ && dio->should_dirty)
		FUNC0(bio);

	dio->bio_disk = bio->bi_disk;

	if (sdio->submit_io) {
		sdio->submit_io(bio, dio->inode, sdio->logical_offset_in_bio);
		dio->bio_cookie = BLK_QC_T_NONE;
	} else
		dio->bio_cookie = FUNC4(bio);

	sdio->bio = NULL;
	sdio->boundary = 0;
	sdio->logical_offset_in_bio = 0;
}