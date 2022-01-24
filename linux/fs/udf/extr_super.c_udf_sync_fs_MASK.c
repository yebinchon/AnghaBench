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
struct udf_sb_info {int /*<<< orphan*/  s_alloc_mutex; scalar_t__ s_lvid_dirty; struct buffer_head* s_lvid_bh; } ;
struct super_block {int dummy; } ;
struct logicalVolIntegrityDesc {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 struct udf_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct logicalVolIntegrityDesc*) ; 

__attribute__((used)) static int FUNC5(struct super_block *sb, int wait)
{
	struct udf_sb_info *sbi = FUNC0(sb);

	FUNC2(&sbi->s_alloc_mutex);
	if (sbi->s_lvid_dirty) {
		struct buffer_head *bh = sbi->s_lvid_bh;
		struct logicalVolIntegrityDesc *lvid;

		lvid = (struct logicalVolIntegrityDesc *)bh->b_data;
		FUNC4(lvid);

		/*
		 * Blockdevice will be synced later so we don't have to submit
		 * the buffer for IO
		 */
		FUNC1(bh);
		sbi->s_lvid_dirty = 0;
	}
	FUNC3(&sbi->s_alloc_mutex);

	return 0;
}