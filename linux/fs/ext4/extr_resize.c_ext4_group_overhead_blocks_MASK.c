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
typedef  int /*<<< orphan*/  ext4_grpblk_t ;
typedef  int /*<<< orphan*/  ext4_group_t ;
struct TYPE_4__ {TYPE_1__* s_es; } ;
struct TYPE_3__ {int /*<<< orphan*/  s_reserved_gdt_blocks; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct super_block*) ; 
 scalar_t__ FUNC1 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ext4_grpblk_t FUNC4(struct super_block *sb,
						ext4_group_t group) {
	ext4_grpblk_t overhead;
	overhead = FUNC2(sb, group);
	if (FUNC1(sb, group))
		overhead += 1 +
			  FUNC3(FUNC0(sb)->s_es->s_reserved_gdt_blocks);
	return overhead;
}