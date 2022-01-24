#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct f2fs_sb_info {int s_ndevs; TYPE_1__* sb; } ;
typedef  int /*<<< orphan*/  nid_t ;
struct TYPE_4__ {int /*<<< orphan*/  bdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  s_bdev; } ;

/* Variables and functions */
 TYPE_2__ FUNC0 (int) ; 
 int /*<<< orphan*/  FLUSH_INO ; 
 int FUNC1 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct f2fs_sb_info*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct f2fs_sb_info*) ; 

__attribute__((used)) static int FUNC4(struct f2fs_sb_info *sbi, nid_t ino)
{
	int ret = 0;
	int i;

	if (!FUNC3(sbi))
		return FUNC1(sbi, sbi->sb->s_bdev);

	for (i = 0; i < sbi->s_ndevs; i++) {
		if (!FUNC2(sbi, ino, i, FLUSH_INO))
			continue;
		ret = FUNC1(sbi, FUNC0(i).bdev);
		if (ret)
			break;
	}
	return ret;
}