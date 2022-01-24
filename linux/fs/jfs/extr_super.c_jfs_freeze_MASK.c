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
struct jfs_sb_info {struct jfs_log* log; } ;
struct jfs_log {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FM_CLEAN ; 
 struct jfs_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,char*) ; 
 int FUNC3 (struct jfs_log*) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*) ; 
 int FUNC7 (struct super_block*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct super_block *sb)
{
	struct jfs_sb_info *sbi = FUNC0(sb);
	struct jfs_log *log = sbi->log;
	int rc = 0;

	if (!FUNC4(sb)) {
		FUNC5(sb);
		rc = FUNC3(log);
		if (rc) {
			FUNC2(sb, "lmLogShutdown failed\n");

			/* let operations fail rather than hang */
			FUNC6(sb);

			return rc;
		}
		rc = FUNC7(sb, FM_CLEAN);
		if (rc) {
			FUNC1("jfs_freeze: updateSuper failed");
			/*
			 * Don't fail here. Everything succeeded except
			 * marking the superblock clean, so there's really
			 * no harm in leaving it frozen for now.
			 */
		}
	}
	return 0;
}