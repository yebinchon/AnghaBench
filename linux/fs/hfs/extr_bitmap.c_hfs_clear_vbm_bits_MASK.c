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
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct super_block {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {scalar_t__ fs_ablocks; int free_ablocks; int /*<<< orphan*/  bitmap_lock; int /*<<< orphan*/ * bitmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  BITMAP ; 
 TYPE_1__* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct super_block *sb, u16 start, u16 count)
{
	__be32 *curr;
	u32 mask;
	int i, len;

	/* is there any actual work to be done? */
	if (!count)
		return 0;

	FUNC3(BITMAP, "clear_bits: %u,%u\n", start, count);
	/* are all of the bits in range? */
	if ((start + count) > FUNC0(sb)->fs_ablocks)
		return -2;

	FUNC4(&FUNC0(sb)->bitmap_lock);
	/* bitmap is always on a 32-bit boundary */
	curr = FUNC0(sb)->bitmap + (start / 32);
	len = count;

	/* do any partial u32 at the start */
	i = start % 32;
	if (i) {
		int j = 32 - i;
		mask = 0xffffffffU << j;
		if (j > count) {
			mask |= 0xffffffffU >> (i + count);
			*curr &= FUNC1(mask);
			goto out;
		}
		*curr++ &= FUNC1(mask);
		count -= j;
	}

	/* do full u32s */
	while (count >= 32) {
		*curr++ = 0;
		count -= 32;
	}
	/* do any partial u32 at end */
	if (count) {
		mask = 0xffffffffU >> count;
		*curr &= FUNC1(mask);
	}
out:
	FUNC0(sb)->free_ablocks += len;
	FUNC5(&FUNC0(sb)->bitmap_lock);
	FUNC2(sb);

	return 0;
}