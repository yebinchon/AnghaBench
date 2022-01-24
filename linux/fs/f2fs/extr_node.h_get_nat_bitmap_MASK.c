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
struct f2fs_sb_info {int dummy; } ;
struct f2fs_nm_info {int /*<<< orphan*/  bitmap_size; int /*<<< orphan*/  nat_bitmap; int /*<<< orphan*/  nat_bitmap_mir; } ;

/* Variables and functions */
 struct f2fs_nm_info* FUNC0 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct f2fs_sb_info*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC4(struct f2fs_sb_info *sbi, void *addr)
{
	struct f2fs_nm_info *nm_i = FUNC0(sbi);

#ifdef CONFIG_F2FS_CHECK_FS
	if (memcmp(nm_i->nat_bitmap, nm_i->nat_bitmap_mir,
						nm_i->bitmap_size))
		f2fs_bug_on(sbi, 1);
#endif
	FUNC3(addr, nm_i->nat_bitmap, nm_i->bitmap_size);
}