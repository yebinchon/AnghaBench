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
struct ubifs_znode {scalar_t__ level; int child_cnt; struct ubifs_zbranch* zbranch; } ;
struct ubifs_zbranch {struct ubifs_znode* znode; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ubifs_znode*) ; 

__attribute__((used)) static struct ubifs_znode *FUNC1(struct ubifs_znode *znode)
{
	int i, cont;

	if (!znode)
		return NULL;

	while (1) {
		if (znode->level == 0) {
			if (FUNC0(znode))
				return znode;
			return NULL;
		}
		cont = 0;
		for (i = 0; i < znode->child_cnt; i++) {
			struct ubifs_zbranch *zbr = &znode->zbranch[i];

			if (zbr->znode && FUNC0(zbr->znode)) {
				znode = zbr->znode;
				cont = 1;
				break;
			}
		}
		if (!cont) {
			if (FUNC0(znode))
				return znode;
			return NULL;
		}
	}
}