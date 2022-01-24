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
struct jffs2_sb_info {int /*<<< orphan*/  erase_completion_lock; } ;
struct jffs2_eraseblock {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct jffs2_sb_info*,struct jffs2_eraseblock*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(struct jffs2_sb_info *c,
			      struct jffs2_eraseblock *jeb)
{
	FUNC1(&c->erase_completion_lock);
	FUNC0(c, jeb);
	FUNC2(&c->erase_completion_lock);
}