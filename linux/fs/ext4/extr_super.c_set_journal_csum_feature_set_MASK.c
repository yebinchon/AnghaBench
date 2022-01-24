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
struct super_block {int dummy; } ;
struct ext4_sb_info {int /*<<< orphan*/  s_journal; } ;

/* Variables and functions */
 struct ext4_sb_info* FUNC0 (struct super_block*) ; 
 int JBD2_FEATURE_COMPAT_CHECKSUM ; 
 int JBD2_FEATURE_INCOMPAT_ASYNC_COMMIT ; 
 int JBD2_FEATURE_INCOMPAT_CSUM_V2 ; 
 int JBD2_FEATURE_INCOMPAT_CSUM_V3 ; 
 int /*<<< orphan*/  JOURNAL_ASYNC_COMMIT ; 
 int /*<<< orphan*/  JOURNAL_CHECKSUM ; 
 scalar_t__ FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct super_block*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct super_block *sb)
{
	int ret = 1;
	int compat, incompat;
	struct ext4_sb_info *sbi = FUNC0(sb);

	if (FUNC1(sb)) {
		/* journal checksum v3 */
		compat = 0;
		incompat = JBD2_FEATURE_INCOMPAT_CSUM_V3;
	} else {
		/* journal checksum v1 */
		compat = JBD2_FEATURE_COMPAT_CHECKSUM;
		incompat = 0;
	}

	FUNC2(sbi->s_journal,
			JBD2_FEATURE_COMPAT_CHECKSUM, 0,
			JBD2_FEATURE_INCOMPAT_CSUM_V3 |
			JBD2_FEATURE_INCOMPAT_CSUM_V2);
	if (FUNC4(sb, JOURNAL_ASYNC_COMMIT)) {
		ret = FUNC3(sbi->s_journal,
				compat, 0,
				JBD2_FEATURE_INCOMPAT_ASYNC_COMMIT |
				incompat);
	} else if (FUNC4(sb, JOURNAL_CHECKSUM)) {
		ret = FUNC3(sbi->s_journal,
				compat, 0,
				incompat);
		FUNC2(sbi->s_journal, 0, 0,
				JBD2_FEATURE_INCOMPAT_ASYNC_COMMIT);
	} else {
		FUNC2(sbi->s_journal, 0, 0,
				JBD2_FEATURE_INCOMPAT_ASYNC_COMMIT);
	}

	return ret;
}