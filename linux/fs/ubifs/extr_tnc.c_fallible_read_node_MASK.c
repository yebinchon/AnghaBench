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
typedef  union ubifs_key {int dummy; } ubifs_key ;
struct ubifs_zbranch {int /*<<< orphan*/  len; int /*<<< orphan*/  offs; int /*<<< orphan*/  lnum; } ;
struct ubifs_info {scalar_t__ replaying; } ;
struct ubifs_dent_node {int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (union ubifs_key const*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (union ubifs_key const*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ubifs_info*,int /*<<< orphan*/ *,union ubifs_key*) ; 
 int /*<<< orphan*/  FUNC3 (struct ubifs_info*,union ubifs_key const*) ; 
 scalar_t__ FUNC4 (struct ubifs_info*,union ubifs_key const*,union ubifs_key*) ; 
 int FUNC5 (struct ubifs_info*,void*,int /*<<< orphan*/ ,struct ubifs_zbranch*) ; 

__attribute__((used)) static int FUNC6(struct ubifs_info *c, const union ubifs_key *key,
			      struct ubifs_zbranch *zbr, void *node)
{
	int ret;

	FUNC1(key, "LEB %d:%d, key ", zbr->lnum, zbr->offs);

	ret = FUNC5(c, node, FUNC3(c, key), zbr);
	if (ret == 1) {
		union ubifs_key node_key;
		struct ubifs_dent_node *dent = node;

		/* All nodes have key in the same place */
		FUNC2(c, &dent->key, &node_key);
		if (FUNC4(c, key, &node_key) != 0)
			ret = 0;
	}
	if (ret == 0 && c->replaying)
		FUNC0(key, "dangling branch LEB %d:%d len %d, key ",
			zbr->lnum, zbr->offs, zbr->len);
	return ret;
}