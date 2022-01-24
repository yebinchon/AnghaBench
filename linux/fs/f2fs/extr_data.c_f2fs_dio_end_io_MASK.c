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
struct f2fs_private_dio {int /*<<< orphan*/  orig_end_io; struct f2fs_private_dio* orig_private; scalar_t__ write; int /*<<< orphan*/  inode; } ;
struct bio {int /*<<< orphan*/  bi_end_io; struct f2fs_private_dio* bi_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  F2FS_DIO_READ ; 
 int /*<<< orphan*/  F2FS_DIO_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct f2fs_private_dio*) ; 

__attribute__((used)) static void FUNC4(struct bio *bio)
{
	struct f2fs_private_dio *dio = bio->bi_private;

	FUNC2(FUNC0(dio->inode),
			dio->write ? F2FS_DIO_WRITE : F2FS_DIO_READ);

	bio->bi_private = dio->orig_private;
	bio->bi_end_io = dio->orig_end_io;

	FUNC3(dio);

	FUNC1(bio);
}