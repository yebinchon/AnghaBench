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
struct super_block {int /*<<< orphan*/  destroy_work; int /*<<< orphan*/  s_shrink; int /*<<< orphan*/  s_subtype; int /*<<< orphan*/  s_user_ns; int /*<<< orphan*/  s_inode_lru; int /*<<< orphan*/  s_dentry_lru; int /*<<< orphan*/  s_umount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct super_block *s)
{
	if (!s)
		return;
	FUNC6(&s->s_umount);
	FUNC3(&s->s_dentry_lru);
	FUNC3(&s->s_inode_lru);
	FUNC5(s);
	FUNC4(s->s_user_ns);
	FUNC2(s->s_subtype);
	FUNC1(&s->s_shrink);
	/* no delays needed */
	FUNC0(&s->destroy_work);
}