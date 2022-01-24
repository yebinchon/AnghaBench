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
struct f2fs_sb_info {int /*<<< orphan*/  dev_lock; int /*<<< orphan*/  dirty_device; } ;
struct f2fs_io_info {int /*<<< orphan*/  ino; int /*<<< orphan*/  new_blkaddr; struct f2fs_sb_info* sbi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLUSH_INO ; 
 int /*<<< orphan*/  FUNC0 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct f2fs_sb_info*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct f2fs_io_info *fio)
{
	struct f2fs_sb_info *sbi = fio->sbi;
	unsigned int devidx;

	if (!FUNC0(sbi))
		return;

	devidx = FUNC3(sbi, fio->new_blkaddr);

	/* update device state for fsync */
	FUNC2(sbi, fio->ino, devidx, FLUSH_INO);

	/* update device state for checkpoint */
	if (!FUNC4(devidx, (char *)&sbi->dirty_device)) {
		FUNC5(&sbi->dev_lock);
		FUNC1(devidx, (char *)&sbi->dirty_device);
		FUNC6(&sbi->dev_lock);
	}
}