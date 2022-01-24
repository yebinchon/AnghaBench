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
typedef  int u64 ;
struct udf_sb_info {int /*<<< orphan*/  s_alloc_mutex; struct buffer_head* s_lvid_bh; } ;
struct super_block {int dummy; } ;
struct logicalVolIntegrityDesc {scalar_t__ logicalVolContentsUse; } ;
struct logicalVolHeaderDesc {int /*<<< orphan*/  uniqueID; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 struct udf_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*) ; 

u64 FUNC6(struct super_block *sb)
{
	struct buffer_head *bh;
	struct udf_sb_info *sbi = FUNC0(sb);
	struct logicalVolIntegrityDesc *lvid;
	struct logicalVolHeaderDesc *lvhd;
	u64 uniqueID;
	u64 ret;

	bh = sbi->s_lvid_bh;
	if (!bh)
		return 0;

	lvid = (struct logicalVolIntegrityDesc *)bh->b_data;
	lvhd = (struct logicalVolHeaderDesc *)lvid->logicalVolContentsUse;

	FUNC3(&sbi->s_alloc_mutex);
	ret = uniqueID = FUNC2(lvhd->uniqueID);
	if (!(++uniqueID & 0xFFFFFFFF))
		uniqueID += 16;
	lvhd->uniqueID = FUNC1(uniqueID);
	FUNC5(sb);
	FUNC4(&sbi->s_alloc_mutex);

	return ret;
}