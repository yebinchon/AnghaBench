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
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  ext4_group_t ;
struct TYPE_2__ {int /*<<< orphan*/ * s_journal; } ;

/* Variables and functions */
 unsigned long FUNC0 (struct super_block*) ; 
 TYPE_1__* FUNC1 (struct super_block*) ; 
 unsigned long FUNC2 (unsigned long*,unsigned long,unsigned long) ; 
 scalar_t__ FUNC3 (struct super_block*,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct super_block *sb, ext4_group_t group,
			  struct buffer_head *bitmap, unsigned long *ino)
{
next:
	*ino = FUNC2((unsigned long *)
				       bitmap->b_data,
				       FUNC0(sb), *ino);
	if (*ino >= FUNC0(sb))
		return 0;

	if ((FUNC1(sb)->s_journal == NULL) &&
	    FUNC3(sb, group, *ino)) {
		*ino = *ino + 1;
		if (*ino < FUNC0(sb))
			goto next;
		return 0;
	}

	return 1;
}