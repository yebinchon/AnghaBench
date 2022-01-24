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
 int /*<<< orphan*/  FUNC0 (struct ubifs_info const*,...) ; 
 struct ubifs_znode* FUNC1 (struct ubifs_znode*,int) ; 
 scalar_t__ FUNC2 (int) ; 

struct ubifs_znode *FUNC3(const struct ubifs_info *c,
					      struct ubifs_znode *zr,
					      struct ubifs_znode *znode)
{
	int level, iip, level_search = 0;
	struct ubifs_znode *zn;

	FUNC0(c, zr);

	if (FUNC2(!znode))
		return zr;

	if (FUNC2(znode == zr)) {
		if (znode->level == 0)
			return NULL;
		return FUNC1(zr, 0);
	}

	level = znode->level;

	iip = znode->iip;
	while (1) {
		FUNC0(c, znode->level <= zr->level);

		/*
		 * First walk up until there is a znode with next branch to
		 * look at.
		 */
		while (znode->parent != zr && iip >= znode->parent->child_cnt) {
			znode = znode->parent;
			iip = znode->iip;
		}

		if (FUNC2(znode->parent == zr &&
			     iip >= znode->parent->child_cnt)) {
			/* This level is done, switch to the lower one */
			level -= 1;
			if (level_search || level < 0)
				/*
				 * We were already looking for znode at lower
				 * level ('level_search'). As we are here
				 * again, it just does not exist. Or all levels
				 * were finished ('level < 0').
				 */
				return NULL;

			level_search = 1;
			iip = -1;
			znode = FUNC1(zr, 0);
			FUNC0(c, znode);
		}

		/* Switch to the next index */
		zn = FUNC1(znode->parent, iip + 1);
		if (!zn) {
			/* No more children to look at, we have walk up */
			iip = znode->parent->child_cnt;
			continue;
		}

		/* Walk back down to the level we came from ('level') */
		while (zn->level != level) {
			znode = zn;
			zn = FUNC1(zn, 0);
			if (!zn) {
				/*
				 * This path is not too deep so it does not
				 * reach 'level'. Try next path.
				 */
				iip = znode->iip;
				break;
			}
		}

		if (zn) {
			FUNC0(c, zn->level >= 0);
			return zn;
		}
	}
}