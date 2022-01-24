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
typedef  scalar_t__ u32 ;
struct super_block {int dummy; } ;
struct TYPE_2__ {scalar_t__ fs_ablocks; int /*<<< orphan*/  bitmap_lock; int /*<<< orphan*/  free_ablocks; void* bitmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  BITMAP ; 
 TYPE_1__* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (void*,scalar_t__,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

u32 FUNC6(struct super_block *sb, u32 goal, u32 *num_bits)
{
	void *bitmap;
	u32 pos;

	/* make sure we have actual work to perform */
	if (!*num_bits)
		return 0;

	FUNC4(&FUNC0(sb)->bitmap_lock);
	bitmap = FUNC0(sb)->bitmap;

	pos = FUNC3(bitmap, FUNC0(sb)->fs_ablocks, goal, num_bits);
	if (pos >= FUNC0(sb)->fs_ablocks) {
		if (goal)
			pos = FUNC3(bitmap, goal, 0, num_bits);
		if (pos >= FUNC0(sb)->fs_ablocks) {
			*num_bits = pos = 0;
			goto out;
		}
	}

	FUNC2(BITMAP, "alloc_bits: %u,%u\n", pos, *num_bits);
	FUNC0(sb)->free_ablocks -= *num_bits;
	FUNC1(sb);
out:
	FUNC5(&FUNC0(sb)->bitmap_lock);
	return pos;
}