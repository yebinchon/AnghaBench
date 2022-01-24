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
struct ubifs_zbranch {scalar_t__ len; void* leaf; int /*<<< orphan*/  key; } ;
struct ubifs_info {int dummy; } ;
struct ubifs_dent_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct ubifs_info*,int /*<<< orphan*/ *) ; 
 void* FUNC2 (void const*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ubifs_info*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ubifs_info*,struct ubifs_dent_node const*) ; 
 int FUNC5 (struct ubifs_info*,struct ubifs_dent_node const*) ; 

__attribute__((used)) static int FUNC6(struct ubifs_info *c, struct ubifs_zbranch *zbr,
		   const void *node)
{
	int err;
	void *lnc_node;
	const struct ubifs_dent_node *dent = node;

	FUNC3(c, !zbr->leaf);
	FUNC3(c, zbr->len != 0);
	FUNC3(c, FUNC1(c, &zbr->key));

	err = FUNC5(c, dent);
	if (err) {
		FUNC0();
		FUNC4(c, dent);
		return err;
	}

	lnc_node = FUNC2(node, zbr->len, GFP_NOFS);
	if (!lnc_node)
		/* We don't have to have the cache, so no error */
		return 0;

	zbr->leaf = lnc_node;
	return 0;
}