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
struct work_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  fdatawrite_one_bdev ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct work_struct*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  sync_fs_one_sb ; 
 int /*<<< orphan*/  sync_inodes_one_sb ; 

__attribute__((used)) static void FUNC4(struct work_struct *work)
{
	int nowait = 0;

	/*
	 * Sync twice to reduce the possibility we skipped some inodes / pages
	 * because they were temporarily locked
	 */
	FUNC1(sync_inodes_one_sb, &nowait);
	FUNC1(sync_fs_one_sb, &nowait);
	FUNC0(fdatawrite_one_bdev, NULL);
	FUNC1(sync_inodes_one_sb, &nowait);
	FUNC1(sync_fs_one_sb, &nowait);
	FUNC0(fdatawrite_one_bdev, NULL);
	FUNC3("Emergency Sync complete\n");
	FUNC2(work);
}