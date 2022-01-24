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
struct super_block {int /*<<< orphan*/  s_bdev; } ;
struct jfs_sb_info {struct jfs_log* log; int /*<<< orphan*/  log_list; } ;
struct jfs_log {struct block_device* bdev; int /*<<< orphan*/  journal_list; scalar_t__ no_integrity; int /*<<< orphan*/  sb_list; int /*<<< orphan*/  flag; } ;
struct block_device {int dummy; } ;

/* Variables and functions */
 int FMODE_EXCL ; 
 int FMODE_READ ; 
 int FMODE_WRITE ; 
 struct jfs_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct jfs_log*) ; 
 int /*<<< orphan*/  FUNC2 (struct jfs_log*) ; 
 int /*<<< orphan*/  FUNC3 (struct block_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  jfs_log_mutex ; 
 int /*<<< orphan*/  FUNC5 (struct jfs_log*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct jfs_log*,struct jfs_sb_info*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct jfs_log*) ; 
 int /*<<< orphan*/  log_INLINELOG ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC14(struct super_block *sb)
{
	struct jfs_sb_info *sbi = FUNC0(sb);
	struct jfs_log *log = sbi->log;
	struct block_device *bdev;
	int rc = 0;

	FUNC4("lmLogClose: log:0x%p", log);

	FUNC10(&jfs_log_mutex);
	FUNC1(log);
	FUNC6(&sbi->log_list);
	FUNC2(log);
	sbi->log = NULL;

	/*
	 * We need to make sure all of the "written" metapages
	 * actually make it to disk
	 */
	FUNC12(sb->s_bdev);

	if (FUNC13(log_INLINELOG, &log->flag)) {
		/*
		 *	in-line log in host file system
		 */
		rc = FUNC9(log);
		FUNC5(log);
		goto out;
	}

	if (!log->no_integrity)
		FUNC8(log, sbi, 0);

	if (!FUNC7(&log->sb_list))
		goto out;

	/*
	 * TODO: ensure that the dummy_log is in a state to allow
	 * lbmLogShutdown to deallocate all the buffers and call
	 * kfree against dummy_log.  For now, leave dummy_log & its
	 * buffers in memory, and resuse if another no-integrity mount
	 * is requested.
	 */
	if (log->no_integrity)
		goto out;

	/*
	 *	external log as separate logical volume
	 */
	FUNC6(&log->journal_list);
	bdev = log->bdev;
	rc = FUNC9(log);

	FUNC3(bdev, FMODE_READ|FMODE_WRITE|FMODE_EXCL);

	FUNC5(log);

      out:
	FUNC11(&jfs_log_mutex);
	FUNC4("lmLogClose: exit(%d)", rc);
	return rc;
}