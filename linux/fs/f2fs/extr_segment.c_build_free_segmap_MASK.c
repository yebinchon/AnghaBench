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
struct free_segmap_info {int /*<<< orphan*/  segmap_lock; scalar_t__ free_sections; scalar_t__ free_segments; int /*<<< orphan*/  start_segno; void* free_secmap; void* free_segmap; } ;
struct f2fs_sb_info {int dummy; } ;
struct TYPE_2__ {struct free_segmap_info* free_info; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct f2fs_sb_info*) ; 
 TYPE_1__* FUNC4 (struct f2fs_sb_info*) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (struct f2fs_sb_info*,unsigned int,int /*<<< orphan*/ ) ; 
 struct free_segmap_info* FUNC7 (struct f2fs_sb_info*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (void*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct f2fs_sb_info *sbi)
{
	struct free_segmap_info *free_i;
	unsigned int bitmap_size, sec_bitmap_size;

	/* allocate memory for free segmap information */
	free_i = FUNC7(sbi, sizeof(struct free_segmap_info), GFP_KERNEL);
	if (!free_i)
		return -ENOMEM;

	FUNC4(sbi)->free_info = free_i;

	bitmap_size = FUNC5(FUNC3(sbi));
	free_i->free_segmap = FUNC6(sbi, bitmap_size, GFP_KERNEL);
	if (!free_i->free_segmap)
		return -ENOMEM;

	sec_bitmap_size = FUNC5(FUNC2(sbi));
	free_i->free_secmap = FUNC6(sbi, sec_bitmap_size, GFP_KERNEL);
	if (!free_i->free_secmap)
		return -ENOMEM;

	/* set all segments as dirty temporarily */
	FUNC8(free_i->free_segmap, 0xff, bitmap_size);
	FUNC8(free_i->free_secmap, 0xff, sec_bitmap_size);

	/* init free segmap information */
	free_i->start_segno = FUNC0(sbi, FUNC1(sbi));
	free_i->free_segments = 0;
	free_i->free_sections = 0;
	FUNC9(&free_i->segmap_lock);
	return 0;
}