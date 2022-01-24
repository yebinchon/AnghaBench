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
struct super_block {int dummy; } ;
typedef  int ext4_group_t ;
typedef  int ext4_fsblk_t ;
struct TYPE_4__ {TYPE_1__* s_es; } ;
struct TYPE_3__ {int /*<<< orphan*/  s_first_data_block; } ;

/* Variables and functions */
 int FUNC0 (struct super_block*) ; 
 int FUNC1 (struct super_block*) ; 
 TYPE_2__* FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  STD_GROUP_SIZE ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,int,int*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct super_block*,int /*<<< orphan*/ ) ; 

ext4_group_t FUNC6(struct super_block *sb,
				   ext4_fsblk_t block)
{
	ext4_group_t group;

	if (FUNC5(sb, STD_GROUP_SIZE))
		group = (block -
			 FUNC4(FUNC2(sb)->s_es->s_first_data_block)) >>
			(FUNC0(sb) + FUNC1(sb) + 3);
	else
		FUNC3(sb, block, &group, NULL);
	return group;
}