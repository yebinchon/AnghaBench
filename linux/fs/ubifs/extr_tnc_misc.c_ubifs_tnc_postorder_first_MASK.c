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
struct ubifs_znode {scalar_t__ level; } ;

/* Variables and functions */
 struct ubifs_znode* FUNC0 (struct ubifs_znode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 

struct ubifs_znode *FUNC2(struct ubifs_znode *znode)
{
	if (FUNC1(!znode))
		return NULL;

	while (znode->level > 0) {
		struct ubifs_znode *child;

		child = FUNC0(znode, 0);
		if (!child)
			return znode;
		znode = child;
	}

	return znode;
}