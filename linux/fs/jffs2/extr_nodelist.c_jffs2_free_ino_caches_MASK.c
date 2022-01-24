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
struct jffs2_sb_info {int inocache_hashsize; struct jffs2_inode_cache** inocache_list; } ;
struct jffs2_inode_cache {struct jffs2_inode_cache* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct jffs2_inode_cache*) ; 
 int /*<<< orphan*/  FUNC1 (struct jffs2_sb_info*,struct jffs2_inode_cache*) ; 

void FUNC2(struct jffs2_sb_info *c)
{
	int i;
	struct jffs2_inode_cache *this, *next;

	for (i=0; i < c->inocache_hashsize; i++) {
		this = c->inocache_list[i];
		while (this) {
			next = this->next;
			FUNC1(c, this);
			FUNC0(this);
			this = next;
		}
		c->inocache_list[i] = NULL;
	}
}