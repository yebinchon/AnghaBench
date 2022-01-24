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
struct TYPE_4__ {int node; } ;
struct TYPE_3__ {int node; } ;
struct super_block {int /*<<< orphan*/  rcu; int /*<<< orphan*/  s_subtype; int /*<<< orphan*/  s_user_ns; int /*<<< orphan*/  s_mounts; TYPE_2__ s_inode_lru; TYPE_1__ s_dentry_lru; int /*<<< orphan*/  s_list; int /*<<< orphan*/  s_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  destroy_super_rcu ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*) ; 

__attribute__((used)) static void FUNC8(struct super_block *s)
{
	if (!--s->s_count) {
		FUNC4(&s->s_list);
		FUNC0(s->s_dentry_lru.node);
		FUNC0(s->s_inode_lru.node);
		FUNC0(!FUNC5(&s->s_mounts));
		FUNC7(s);
		FUNC2(s);
		FUNC6(s->s_user_ns);
		FUNC3(s->s_subtype);
		FUNC1(&s->rcu, destroy_super_rcu);
	}
}