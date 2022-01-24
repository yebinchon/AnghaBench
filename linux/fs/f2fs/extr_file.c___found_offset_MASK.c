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
struct f2fs_sb_info {int dummy; } ;
typedef  int /*<<< orphan*/  pgoff_t ;
typedef  int /*<<< orphan*/  block_t ;

/* Variables and functions */
 int /*<<< orphan*/  NEW_ADDR ; 
 int /*<<< orphan*/  NULL_ADDR ; 
#define  SEEK_DATA 129 
#define  SEEK_HOLE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC1(struct f2fs_sb_info *sbi, block_t blkaddr,
				pgoff_t dirty, pgoff_t pgofs, int whence)
{
	switch (whence) {
	case SEEK_DATA:
		if ((blkaddr == NEW_ADDR && dirty == pgofs) ||
			FUNC0(blkaddr))
			return true;
		break;
	case SEEK_HOLE:
		if (blkaddr == NULL_ADDR)
			return true;
		break;
	}
	return false;
}