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
struct f2fs_io_info {int /*<<< orphan*/  new_blkaddr; int /*<<< orphan*/  old_blkaddr; struct f2fs_sb_info* sbi; } ;

/* Variables and functions */
 int /*<<< orphan*/  DATA_GENERIC ; 
 int /*<<< orphan*/  DATA_GENERIC_ENHANCE ; 
 int /*<<< orphan*/  META_GENERIC ; 
 scalar_t__ FUNC0 (struct f2fs_io_info*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct f2fs_sb_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct f2fs_io_info *fio)
{
	struct f2fs_sb_info *sbi = fio->sbi;

	if (FUNC1(fio->old_blkaddr))
		FUNC2(sbi, fio->old_blkaddr, FUNC0(fio) ?
					META_GENERIC : DATA_GENERIC);
	FUNC2(sbi, fio->new_blkaddr, FUNC0(fio) ?
					META_GENERIC : DATA_GENERIC_ENHANCE);
}