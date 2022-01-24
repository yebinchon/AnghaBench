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
struct buffer_head {int dummy; } ;
struct TYPE_2__ {struct buffer_head* s_sbh; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  KERN_ERR ; 
 scalar_t__ FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 

__attribute__((used)) static void FUNC5(struct super_block *sb)
{
	struct buffer_head *sbh = FUNC0(sb)->s_sbh;

	if (FUNC1(sbh)) {
		/*
		 * Oh, dear.  A previous attempt to write the
		 * superblock failed.  This could happen because the
		 * USB device was yanked out.  Or it could happen to
		 * be a transient write error and maybe the block will
		 * be remapped.  Nothing we can do but to retry the
		 * write and hope for the best.
		 */
		FUNC3(sb, KERN_ERR,
		       "previous I/O error to superblock detected");
		FUNC2(sbh);
		FUNC4(sbh);
	}
}