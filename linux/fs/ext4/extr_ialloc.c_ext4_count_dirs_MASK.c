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
typedef  scalar_t__ ext4_group_t ;

/* Variables and functions */
 struct ext4_group_desc* FUNC0 (struct super_block*,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct super_block*) ; 
 scalar_t__ FUNC2 (struct super_block*,struct ext4_group_desc*) ; 

unsigned long FUNC3(struct super_block * sb)
{
	unsigned long count = 0;
	ext4_group_t i, ngroups = FUNC1(sb);

	for (i = 0; i < ngroups; i++) {
		struct ext4_group_desc *gdp = FUNC0(sb, i, NULL);
		if (!gdp)
			continue;
		count += FUNC2(sb, gdp);
	}
	return count;
}