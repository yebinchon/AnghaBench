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

/* Variables and functions */
 int /*<<< orphan*/  ADAPTIVE ; 
#define  F2FS_MOUNT_ADAPTIVE 129 
#define  F2FS_MOUNT_LFS 128 
 int /*<<< orphan*/  LFS ; 
 int /*<<< orphan*/  FUNC0 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct f2fs_sb_info *sbi, unsigned int mt)
{
	FUNC0(sbi, ADAPTIVE);
	FUNC0(sbi, LFS);

	switch (mt) {
	case F2FS_MOUNT_ADAPTIVE:
		FUNC1(sbi, ADAPTIVE);
		break;
	case F2FS_MOUNT_LFS:
		FUNC1(sbi, LFS);
		break;
	}
}