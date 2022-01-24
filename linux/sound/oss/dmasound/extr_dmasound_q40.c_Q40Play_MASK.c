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
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct TYPE_3__ {int count; scalar_t__ rear_size; scalar_t__ block_size; int /*<<< orphan*/  syncing; scalar_t__ active; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_2__ dmasound ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 TYPE_1__ write_sq ; 

__attribute__((used)) static void FUNC3(void)
{
        unsigned long flags;

	if (write_sq.active || write_sq.count<=0 ) {
		/* There's already a frame loaded */
		return;
	}

	/* nothing in the queue */
	if (write_sq.count <= 1 && write_sq.rear_size < write_sq.block_size && !write_sq.syncing) {
	         /* hmmm, the only existing frame is not
		  * yet filled and we're not syncing?
		  */
	         return;
	}
	FUNC1(&dmasound.lock, flags);
	FUNC0(1);
	FUNC2(&dmasound.lock, flags);
}