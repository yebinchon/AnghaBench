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
struct jffs2_sb_info {size_t inocache_hashsize; int /*<<< orphan*/  inocache_lock; struct jffs2_inode_cache** inocache_list; } ;
struct jffs2_inode_cache {size_t ino; scalar_t__ state; struct jffs2_inode_cache* next; int /*<<< orphan*/  xref; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ INO_STATE_CLEARING ; 
 scalar_t__ INO_STATE_READING ; 
 int /*<<< orphan*/  FUNC1 (char*,struct jffs2_inode_cache*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct jffs2_inode_cache*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct jffs2_sb_info *c, struct jffs2_inode_cache *old)
{
	struct jffs2_inode_cache **prev;

#ifdef CONFIG_JFFS2_FS_XATTR
	BUG_ON(old->xref);
#endif
	FUNC1("del %p (ino #%u)\n", old, old->ino);
	FUNC3(&c->inocache_lock);

	prev = &c->inocache_list[old->ino % c->inocache_hashsize];

	while ((*prev) && (*prev)->ino < old->ino) {
		prev = &(*prev)->next;
	}
	if ((*prev) == old) {
		*prev = old->next;
	}

	/* Free it now unless it's in READING or CLEARING state, which
	   are the transitions upon read_inode() and clear_inode(). The
	   rest of the time we know nobody else is looking at it, and
	   if it's held by read_inode() or clear_inode() they'll free it
	   for themselves. */
	if (old->state != INO_STATE_READING && old->state != INO_STATE_CLEARING)
		FUNC2(old);

	FUNC4(&c->inocache_lock);
}