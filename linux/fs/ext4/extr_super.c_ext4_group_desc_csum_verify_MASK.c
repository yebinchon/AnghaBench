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
struct ext4_group_desc {scalar_t__ bg_checksum; } ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct super_block*,int /*<<< orphan*/ ,struct ext4_group_desc*) ; 
 scalar_t__ FUNC1 (struct super_block*) ; 

int FUNC2(struct super_block *sb, __u32 block_group,
				struct ext4_group_desc *gdp)
{
	if (FUNC1(sb) &&
	    (gdp->bg_checksum != FUNC0(sb, block_group, gdp)))
		return 0;

	return 1;
}