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
struct jffs2_sb_info {int /*<<< orphan*/  erase_wait; int /*<<< orphan*/  erase_free_sem; int /*<<< orphan*/  erase_completion_lock; int /*<<< orphan*/  erase_complete_list; } ;
struct jffs2_eraseblock {int /*<<< orphan*/  list; int /*<<< orphan*/  offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct jffs2_sb_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct jffs2_sb_info *c, struct jffs2_eraseblock *jeb)
{
	FUNC0(1, "Erase completed successfully at 0x%08x\n", jeb->offset);
	FUNC3(&c->erase_free_sem);
	FUNC5(&c->erase_completion_lock);
	FUNC2(&jeb->list, &c->erase_complete_list);
	/* Wake the GC thread to mark them clean */
	FUNC1(c);
	FUNC6(&c->erase_completion_lock);
	FUNC4(&c->erase_free_sem);
	FUNC7(&c->erase_wait);
}