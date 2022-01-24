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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ udf_pblk_t ;
struct kernel_lb_addr {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct extent_position {int /*<<< orphan*/  bh; } ;
typedef  int /*<<< orphan*/  sector_t ;
struct TYPE_2__ {int /*<<< orphan*/  i_data_sem; } ;

/* Variables and functions */
 int EXT_RECORDED_ALLOCATED ; 
 int /*<<< orphan*/  UDF_FLAG_VARCONV ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct inode*,int /*<<< orphan*/ ,struct extent_position*,struct kernel_lb_addr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,struct kernel_lb_addr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

udf_pblk_t FUNC8(struct inode *inode, sector_t block)
{
	struct kernel_lb_addr eloc;
	uint32_t elen;
	sector_t offset;
	struct extent_position epos = {};
	udf_pblk_t ret;

	FUNC3(&FUNC0(inode)->i_data_sem);

	if (FUNC4(inode, block, &epos, &eloc, &elen, &offset) ==
						(EXT_RECORDED_ALLOCATED >> 30))
		ret = FUNC6(inode->i_sb, &eloc, offset);
	else
		ret = 0;

	FUNC7(&FUNC0(inode)->i_data_sem);
	FUNC2(epos.bh);

	if (FUNC1(inode->i_sb, UDF_FLAG_VARCONV))
		return FUNC5(ret);
	else
		return ret;
}