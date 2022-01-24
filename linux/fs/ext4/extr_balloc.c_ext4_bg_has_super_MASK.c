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
struct super_block {int dummy; } ;
struct ext4_super_block {int /*<<< orphan*/ * s_backup_bgs; } ;
typedef  scalar_t__ ext4_group_t ;
struct TYPE_2__ {struct ext4_super_block* s_es; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*) ; 
 scalar_t__ FUNC2 (struct super_block*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__,int) ; 

int FUNC5(struct super_block *sb, ext4_group_t group)
{
	struct ext4_super_block *es = FUNC0(sb)->s_es;

	if (group == 0)
		return 1;
	if (FUNC2(sb)) {
		if (group == FUNC3(es->s_backup_bgs[0]) ||
		    group == FUNC3(es->s_backup_bgs[1]))
			return 1;
		return 0;
	}
	if ((group <= 1) || !FUNC1(sb))
		return 1;
	if (!(group & 1))
		return 0;
	if (FUNC4(group, 3) || (FUNC4(group, 5)) ||
	    FUNC4(group, 7))
		return 1;

	return 0;
}