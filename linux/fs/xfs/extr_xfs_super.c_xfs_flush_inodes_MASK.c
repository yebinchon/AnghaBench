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
struct xfs_mount {struct super_block* m_super; } ;
struct super_block {int /*<<< orphan*/  s_umount; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(
	struct xfs_mount	*mp)
{
	struct super_block	*sb = mp->m_super;

	if (FUNC0(&sb->s_umount)) {
		FUNC1(sb);
		FUNC2(&sb->s_umount);
	}
}