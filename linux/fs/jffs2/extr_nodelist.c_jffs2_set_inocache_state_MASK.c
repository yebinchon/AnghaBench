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
struct jffs2_sb_info {int /*<<< orphan*/  inocache_lock; int /*<<< orphan*/  inocache_wq; } ;
struct jffs2_inode_cache {int state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct jffs2_sb_info *c, struct jffs2_inode_cache *ic, int state)
{
	FUNC0(&c->inocache_lock);
	ic->state = state;
	FUNC2(&c->inocache_wq);
	FUNC1(&c->inocache_lock);
}