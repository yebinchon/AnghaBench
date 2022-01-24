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
struct request_queue {int dummy; } ;
struct kiocb {int /*<<< orphan*/  ki_cookie; TYPE_2__* ki_filp; } ;
struct block_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* f_mapping; } ;
struct TYPE_3__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 struct block_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct request_queue* FUNC2 (struct block_device*) ; 
 int FUNC3 (struct request_queue*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct kiocb *kiocb, bool wait)
{
	struct block_device *bdev = FUNC0(kiocb->ki_filp->f_mapping->host);
	struct request_queue *q = FUNC2(bdev);

	return FUNC3(q, FUNC1(kiocb->ki_cookie), wait);
}