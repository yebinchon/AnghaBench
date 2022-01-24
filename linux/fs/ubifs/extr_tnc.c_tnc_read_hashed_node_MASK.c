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
struct ubifs_zbranch {scalar_t__ len; int /*<<< orphan*/  key; scalar_t__ leaf; } ;
struct ubifs_info {scalar_t__ replaying; } ;

/* Variables and functions */
 int ENOENT ; 
 int FUNC0 (struct ubifs_info*,int /*<<< orphan*/ *,struct ubifs_zbranch*,void*) ; 
 int FUNC1 (struct ubifs_info*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct ubifs_info*,struct ubifs_zbranch*,void*) ; 
 int /*<<< orphan*/  FUNC3 (void*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct ubifs_info*,int) ; 
 int FUNC5 (struct ubifs_info*,struct ubifs_zbranch*,void*) ; 

__attribute__((used)) static int FUNC6(struct ubifs_info *c, struct ubifs_zbranch *zbr,
				void *node)
{
	int err;

	FUNC4(c, FUNC1(c, &zbr->key));

	if (zbr->leaf) {
		/* Read from the leaf node cache */
		FUNC4(c, zbr->len != 0);
		FUNC3(node, zbr->leaf, zbr->len);
		return 0;
	}

	if (c->replaying) {
		err = FUNC0(c, &zbr->key, zbr, node);
		/*
		 * When the node was not found, return -ENOENT, 0 otherwise.
		 * Negative return codes stay as-is.
		 */
		if (err == 0)
			err = -ENOENT;
		else if (err == 1)
			err = 0;
	} else {
		err = FUNC5(c, zbr, node);
	}
	if (err)
		return err;

	/* Add the node to the leaf node cache */
	err = FUNC2(c, zbr, node);
	return err;
}