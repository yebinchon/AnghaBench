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
struct inode {TYPE_1__* i_sb; scalar_t__ __i_nlink; scalar_t__ i_nlink; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_remove_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(struct inode *inode)
{
	if (inode->i_nlink) {
		inode->__i_nlink = 0;
		FUNC0(&inode->i_sb->s_remove_count);
	}
}