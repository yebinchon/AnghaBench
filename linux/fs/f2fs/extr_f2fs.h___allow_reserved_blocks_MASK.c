#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_resgid; int /*<<< orphan*/  s_resuid; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_RESOURCE ; 
 TYPE_1__ FUNC0 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  GLOBAL_ROOT_GID ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  RESERVE_ROOT ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC8(struct f2fs_sb_info *sbi,
					struct inode *inode, bool cap)
{
	if (!inode)
		return true;
	if (!FUNC6(sbi, RESERVE_ROOT))
		return false;
	if (FUNC1(inode))
		return true;
	if (FUNC7(FUNC0(sbi).s_resuid, FUNC3()))
		return true;
	if (!FUNC4(FUNC0(sbi).s_resgid, GLOBAL_ROOT_GID) &&
					FUNC5(FUNC0(sbi).s_resgid))
		return true;
	if (cap && FUNC2(CAP_SYS_RESOURCE))
		return true;
	return false;
}