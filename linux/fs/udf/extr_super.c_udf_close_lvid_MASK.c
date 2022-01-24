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
struct udf_sb_info {scalar_t__ s_udfrev; int /*<<< orphan*/  s_alloc_mutex; scalar_t__ s_lvid_dirty; struct buffer_head* s_lvid_bh; } ;
struct super_block {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * identSuffix; } ;
struct logicalVolIntegrityDescImpUse {void* minUDFWriteRev; void* minUDFReadRev; void* maxUDFWriteRev; TYPE_1__ impIdent; } ;
struct logicalVolIntegrityDesc {int /*<<< orphan*/  integrityType; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  LVID_INTEGRITY_TYPE_CLOSE ; 
 int /*<<< orphan*/  UDF_FLAG_INCONSISTENT ; 
 scalar_t__ UDF_MAX_WRITE_VERSION ; 
 int /*<<< orphan*/  UDF_OS_CLASS_UNIX ; 
 int /*<<< orphan*/  UDF_OS_ID_LINUX ; 
 int /*<<< orphan*/  FUNC0 (struct super_block*,int /*<<< orphan*/ ) ; 
 struct udf_sb_info* FUNC1 (struct super_block*) ; 
 void* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC9 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC10 (struct logicalVolIntegrityDesc*) ; 
 struct logicalVolIntegrityDescImpUse* FUNC11 (struct super_block*) ; 

__attribute__((used)) static void FUNC12(struct super_block *sb)
{
	struct udf_sb_info *sbi = FUNC1(sb);
	struct buffer_head *bh = sbi->s_lvid_bh;
	struct logicalVolIntegrityDesc *lvid;
	struct logicalVolIntegrityDescImpUse *lvidiu;

	if (!bh)
		return;
	lvid = (struct logicalVolIntegrityDesc *)bh->b_data;
	lvidiu = FUNC11(sb);
	if (!lvidiu)
		return;

	FUNC6(&sbi->s_alloc_mutex);
	lvidiu->impIdent.identSuffix[0] = UDF_OS_CLASS_UNIX;
	lvidiu->impIdent.identSuffix[1] = UDF_OS_ID_LINUX;
	if (UDF_MAX_WRITE_VERSION > FUNC4(lvidiu->maxUDFWriteRev))
		lvidiu->maxUDFWriteRev = FUNC2(UDF_MAX_WRITE_VERSION);
	if (sbi->s_udfrev > FUNC4(lvidiu->minUDFReadRev))
		lvidiu->minUDFReadRev = FUNC2(sbi->s_udfrev);
	if (sbi->s_udfrev > FUNC4(lvidiu->minUDFWriteRev))
		lvidiu->minUDFWriteRev = FUNC2(sbi->s_udfrev);
	if (!FUNC0(sb, UDF_FLAG_INCONSISTENT))
		lvid->integrityType = FUNC3(LVID_INTEGRITY_TYPE_CLOSE);

	/*
	 * We set buffer uptodate unconditionally here to avoid spurious
	 * warnings from mark_buffer_dirty() when previous EIO has marked
	 * the buffer as !uptodate
	 */
	FUNC8(bh);
	FUNC10(lvid);
	FUNC5(bh);
	sbi->s_lvid_dirty = 0;
	FUNC7(&sbi->s_alloc_mutex);
	/* Make closing of filesystem visible on the media immediately */
	FUNC9(bh);
}