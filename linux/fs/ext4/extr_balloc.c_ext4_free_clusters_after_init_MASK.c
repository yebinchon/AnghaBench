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
struct super_block {int dummy; } ;
struct ext4_group_desc {int dummy; } ;
typedef  int /*<<< orphan*/  ext4_group_t ;

/* Variables and functions */
 int FUNC0 (struct super_block*,int /*<<< orphan*/ ,struct ext4_group_desc*) ; 
 int FUNC1 (struct super_block*,int /*<<< orphan*/ ) ; 

unsigned FUNC2(struct super_block *sb,
				       ext4_group_t block_group,
				       struct ext4_group_desc *gdp)
{
	return FUNC1(sb, block_group) - 
		FUNC0(sb, block_group, gdp);
}