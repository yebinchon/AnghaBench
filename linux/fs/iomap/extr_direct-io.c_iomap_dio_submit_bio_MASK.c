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
struct TYPE_3__ {int /*<<< orphan*/  cookie; int /*<<< orphan*/  last_queue; } ;
struct iomap_dio {TYPE_1__ submit; TYPE_2__* iocb; int /*<<< orphan*/  ref; } ;
struct iomap {int /*<<< orphan*/  bdev; } ;
struct bio {int dummy; } ;
struct TYPE_4__ {int ki_flags; } ;

/* Variables and functions */
 int IOCB_HIPRI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*) ; 

__attribute__((used)) static void FUNC4(struct iomap_dio *dio, struct iomap *iomap,
		struct bio *bio)
{
	FUNC0(&dio->ref);

	if (dio->iocb->ki_flags & IOCB_HIPRI)
		FUNC2(bio, dio->iocb);

	dio->submit.last_queue = FUNC1(iomap->bdev);
	dio->submit.cookie = FUNC3(bio);
}