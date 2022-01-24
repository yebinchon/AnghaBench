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
struct ubifs_znode {int level; int iip; int child_cnt; struct ubifs_znode* parent; } ;
struct ubifs_info {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ubifs_znode*) ; 
 struct ubifs_znode* FUNC1 (struct ubifs_info*,struct ubifs_znode*,int) ; 

__attribute__((used)) static struct ubifs_znode *FUNC2(struct ubifs_info *c,
				      struct ubifs_znode *znode)
{
	int level = znode->level;

	while (1) {
		int n = znode->iip - 1;

		/* Go up until we can go left */
		znode = znode->parent;
		if (!znode)
			return NULL;
		if (n >= 0) {
			/* Now go down the rightmost branch to 'level' */
			znode = FUNC1(c, znode, n);
			if (FUNC0(znode))
				return znode;
			while (znode->level != level) {
				n = znode->child_cnt - 1;
				znode = FUNC1(c, znode, n);
				if (FUNC0(znode))
					return znode;
			}
			break;
		}
	}
	return znode;
}