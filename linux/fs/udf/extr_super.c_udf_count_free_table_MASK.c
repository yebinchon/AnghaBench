#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int uint32_t ;
struct unallocSpaceEntry {int dummy; } ;
struct super_block {int dummy; } ;
struct kernel_lb_addr {int dummy; } ;
struct inode {TYPE_1__* i_sb; } ;
struct extent_position {int offset; int /*<<< orphan*/ * bh; int /*<<< orphan*/  block; } ;
typedef  int int8_t ;
struct TYPE_6__ {int /*<<< orphan*/  i_location; } ;
struct TYPE_5__ {int /*<<< orphan*/  s_alloc_mutex; } ;
struct TYPE_4__ {unsigned int s_blocksize_bits; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct inode*) ; 
 TYPE_2__* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct inode*,struct extent_position*,struct kernel_lb_addr*,unsigned int*,int) ; 

__attribute__((used)) static unsigned int FUNC6(struct super_block *sb,
					 struct inode *table)
{
	unsigned int accum = 0;
	uint32_t elen;
	struct kernel_lb_addr eloc;
	int8_t etype;
	struct extent_position epos;

	FUNC3(&FUNC1(sb)->s_alloc_mutex);
	epos.block = FUNC0(table)->i_location;
	epos.offset = sizeof(struct unallocSpaceEntry);
	epos.bh = NULL;

	while ((etype = FUNC5(table, &epos, &eloc, &elen, 1)) != -1)
		accum += (elen >> table->i_sb->s_blocksize_bits);

	FUNC2(epos.bh);
	FUNC4(&FUNC1(sb)->s_alloc_mutex);

	return accum;
}