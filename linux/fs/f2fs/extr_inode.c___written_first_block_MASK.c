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
struct f2fs_inode {int /*<<< orphan*/ * i_addr; } ;
typedef  int /*<<< orphan*/  block_t ;

/* Variables and functions */
 int /*<<< orphan*/  DATA_GENERIC_ENHANCE ; 
 int EFSCORRUPTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct f2fs_sb_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (struct f2fs_inode*) ; 

__attribute__((used)) static int FUNC4(struct f2fs_sb_info *sbi,
					struct f2fs_inode *ri)
{
	block_t addr = FUNC2(ri->i_addr[FUNC3(ri)]);

	if (!FUNC0(addr))
		return 1;
	if (!FUNC1(sbi, addr, DATA_GENERIC_ENHANCE))
		return -EFSCORRUPTED;
	return 0;
}