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
struct sit_info {int /*<<< orphan*/  bitmap_size; int /*<<< orphan*/  sit_bitmap; int /*<<< orphan*/  sit_bitmap_mir; } ;
struct f2fs_sb_info {int dummy; } ;

/* Variables and functions */
 struct sit_info* FUNC0 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct f2fs_sb_info*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC4(struct f2fs_sb_info *sbi,
		void *dst_addr)
{
	struct sit_info *sit_i = FUNC0(sbi);

#ifdef CONFIG_F2FS_CHECK_FS
	if (memcmp(sit_i->sit_bitmap, sit_i->sit_bitmap_mir,
						sit_i->bitmap_size))
		f2fs_bug_on(sbi, 1);
#endif
	FUNC3(dst_addr, sit_i->sit_bitmap, sit_i->bitmap_size);
}