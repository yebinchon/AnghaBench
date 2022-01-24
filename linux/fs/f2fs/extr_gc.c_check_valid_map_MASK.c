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
struct sit_info {int /*<<< orphan*/  sentry_lock; } ;
struct seg_entry {int /*<<< orphan*/  cur_valid_map; } ;
struct f2fs_sb_info {int dummy; } ;

/* Variables and functions */
 struct sit_info* FUNC0 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct seg_entry* FUNC3 (struct f2fs_sb_info*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct f2fs_sb_info *sbi,
				unsigned int segno, int offset)
{
	struct sit_info *sit_i = FUNC0(sbi);
	struct seg_entry *sentry;
	int ret;

	FUNC1(&sit_i->sentry_lock);
	sentry = FUNC3(sbi, segno);
	ret = FUNC2(offset, sentry->cur_valid_map);
	FUNC4(&sit_i->sentry_lock);
	return ret;
}