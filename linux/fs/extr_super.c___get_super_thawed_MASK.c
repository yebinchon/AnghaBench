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
struct TYPE_2__ {scalar_t__ frozen; int /*<<< orphan*/  wait_unfrozen; } ;
struct super_block {TYPE_1__ s_writers; int /*<<< orphan*/  s_umount; } ;
struct block_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ SB_UNFROZEN ; 
 struct super_block* FUNC0 (struct block_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct super_block *FUNC5(struct block_device *bdev,
					      bool excl)
{
	while (1) {
		struct super_block *s = FUNC0(bdev, excl);
		if (!s || s->s_writers.frozen == SB_UNFROZEN)
			return s;
		if (!excl)
			FUNC2(&s->s_umount);
		else
			FUNC3(&s->s_umount);
		FUNC4(s->s_writers.wait_unfrozen,
			   s->s_writers.frozen == SB_UNFROZEN);
		FUNC1(s);
	}
}