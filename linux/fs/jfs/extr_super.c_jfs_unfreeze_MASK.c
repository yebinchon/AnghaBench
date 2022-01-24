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
 int /*<<< orphan*/  FM_MOUNT ; 
 struct jfs_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*,char*) ; 
 int FUNC2 (struct jfs_log*) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*) ; 
 int FUNC5 (struct super_block*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct super_block *sb)
{
	struct jfs_sb_info *sbi = FUNC0(sb);
	struct jfs_log *log = sbi->log;
	int rc = 0;

	if (!FUNC3(sb)) {
		rc = FUNC5(sb, FM_MOUNT);
		if (rc) {
			FUNC1(sb, "updateSuper failed\n");
			goto out;
		}
		rc = FUNC2(log);
		if (rc)
			FUNC1(sb, "lmLogInit failed\n");
out:
		FUNC4(sb);
	}
	return rc;
}