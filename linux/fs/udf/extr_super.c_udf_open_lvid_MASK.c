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
struct udf_sb_info {int /*<<< orphan*/  s_alloc_mutex; scalar_t__ s_lvid_dirty; struct buffer_head* s_lvid_bh; } ;
struct super_block {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * identSuffix; } ;
struct logicalVolIntegrityDescImpUse {TYPE_1__ impIdent; } ;
struct logicalVolIntegrityDesc {int /*<<< orphan*/  integrityType; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 scalar_t__ LVID_INTEGRITY_TYPE_CLOSE ; 
 int /*<<< orphan*/  LVID_INTEGRITY_TYPE_OPEN ; 
 int /*<<< orphan*/  UDF_FLAG_INCONSISTENT ; 
 int /*<<< orphan*/  UDF_OS_CLASS_UNIX ; 
 int /*<<< orphan*/  UDF_OS_ID_LINUX ; 
 struct udf_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC8 (struct logicalVolIntegrityDesc*) ; 
 struct logicalVolIntegrityDescImpUse* FUNC9 (struct super_block*) ; 

__attribute__((used)) static void FUNC10(struct super_block *sb)
{
	struct udf_sb_info *sbi = FUNC0(sb);
	struct buffer_head *bh = sbi->s_lvid_bh;
	struct logicalVolIntegrityDesc *lvid;
	struct logicalVolIntegrityDescImpUse *lvidiu;

	if (!bh)
		return;
	lvid = (struct logicalVolIntegrityDesc *)bh->b_data;
	lvidiu = FUNC9(sb);
	if (!lvidiu)
		return;

	FUNC5(&sbi->s_alloc_mutex);
	lvidiu->impIdent.identSuffix[0] = UDF_OS_CLASS_UNIX;
	lvidiu->impIdent.identSuffix[1] = UDF_OS_ID_LINUX;
	if (FUNC3(lvid->integrityType) == LVID_INTEGRITY_TYPE_CLOSE)
		lvid->integrityType = FUNC2(LVID_INTEGRITY_TYPE_OPEN);
	else
		FUNC1(sb, UDF_FLAG_INCONSISTENT);

	FUNC8(lvid);
	FUNC4(bh);
	sbi->s_lvid_dirty = 0;
	FUNC6(&sbi->s_alloc_mutex);
	/* Make opening of filesystem visible on the media immediately */
	FUNC7(bh);
}