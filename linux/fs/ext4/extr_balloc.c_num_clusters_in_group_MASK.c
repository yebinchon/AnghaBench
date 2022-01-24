#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
typedef  int ext4_group_t ;
struct TYPE_3__ {int /*<<< orphan*/  s_es; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct super_block*) ; 
 unsigned int FUNC1 (TYPE_1__*,unsigned int) ; 
 TYPE_1__* FUNC2 (struct super_block*) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct super_block*) ; 
 unsigned int FUNC5 (struct super_block*,int) ; 

__attribute__((used)) static unsigned int FUNC6(struct super_block *sb,
					  ext4_group_t block_group)
{
	unsigned int blocks;

	if (block_group == FUNC4(sb) - 1) {
		/*
		 * Even though mke2fs always initializes the first and
		 * last group, just in case some other tool was used,
		 * we need to make sure we calculate the right free
		 * blocks.
		 */
		blocks = FUNC3(FUNC2(sb)->s_es) -
			FUNC5(sb, block_group);
	} else
		blocks = FUNC0(sb);
	return FUNC1(FUNC2(sb), blocks);
}