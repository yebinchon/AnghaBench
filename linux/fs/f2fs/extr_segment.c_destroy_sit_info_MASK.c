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
struct sit_info {struct sit_info* invalid_segmap; struct sit_info* sit_bitmap_mir; struct sit_info* sit_bitmap; struct sit_info* dirty_sentries_bitmap; struct sit_info* sec_entries; struct sit_info* sentries; struct sit_info* tmp_map; struct sit_info* bitmap; } ;
struct f2fs_sb_info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * sit_info; } ;

/* Variables and functions */
 struct sit_info* FUNC0 (struct f2fs_sb_info*) ; 
 TYPE_1__* FUNC1 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct sit_info*) ; 

__attribute__((used)) static void FUNC3(struct f2fs_sb_info *sbi)
{
	struct sit_info *sit_i = FUNC0(sbi);

	if (!sit_i)
		return;

	if (sit_i->sentries)
		FUNC2(sit_i->bitmap);
	FUNC2(sit_i->tmp_map);

	FUNC2(sit_i->sentries);
	FUNC2(sit_i->sec_entries);
	FUNC2(sit_i->dirty_sentries_bitmap);

	FUNC1(sbi)->sit_info = NULL;
	FUNC2(sit_i->sit_bitmap);
#ifdef CONFIG_F2FS_CHECK_FS
	kvfree(sit_i->sit_bitmap_mir);
	kvfree(sit_i->invalid_segmap);
#endif
	FUNC2(sit_i);
}