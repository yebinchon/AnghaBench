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
struct super_block {int /*<<< orphan*/  s_umount; int /*<<< orphan*/  s_inode_lru; int /*<<< orphan*/  s_dentry_lru; int /*<<< orphan*/  s_shrink; int /*<<< orphan*/  s_active; struct file_system_type* s_type; } ;
struct file_system_type {int /*<<< orphan*/  (* kill_sb ) (struct super_block*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct file_system_type*) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct super_block *s)
{
	struct file_system_type *fs = s->s_type;
	if (FUNC0(&s->s_active)) {
		FUNC1(s);
		FUNC6(&s->s_shrink);
		fs->kill_sb(s);

		/*
		 * Since list_lru_destroy() may sleep, we cannot call it from
		 * put_super(), where we hold the sb_lock. Therefore we destroy
		 * the lru lists right now.
		 */
		FUNC2(&s->s_dentry_lru);
		FUNC2(&s->s_inode_lru);

		FUNC3(fs);
		FUNC4(s);
	} else {
		FUNC7(&s->s_umount);
	}
}