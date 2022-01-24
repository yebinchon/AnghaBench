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
struct inode {int dummy; } ;
typedef  scalar_t__ __u64 ;
struct TYPE_4__ {int /*<<< orphan*/  i_bmap; } ;
struct TYPE_3__ {int /*<<< orphan*/  mi_blocks_per_desc_block; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (struct inode*) ; 
 TYPE_1__* FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static int FUNC5(struct inode *inode,
					    unsigned long *desc_blocks)
{
	__u64 blknum;
	int ret;

	ret = FUNC4(FUNC1(inode)->i_bmap, &blknum);
	if (FUNC3(!ret))
		*desc_blocks = FUNC0(
			(unsigned long)blknum,
			FUNC2(inode)->mi_blocks_per_desc_block);
	return ret;
}