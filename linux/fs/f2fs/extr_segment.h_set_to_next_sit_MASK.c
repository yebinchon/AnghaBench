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
struct sit_info {int /*<<< orphan*/  sit_bitmap_mir; int /*<<< orphan*/  sit_bitmap; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct sit_info *sit_i, unsigned int start)
{
	unsigned int block_off = FUNC0(start);

	FUNC1(block_off, sit_i->sit_bitmap);
#ifdef CONFIG_F2FS_CHECK_FS
	f2fs_change_bit(block_off, sit_i->sit_bitmap_mir);
#endif
}