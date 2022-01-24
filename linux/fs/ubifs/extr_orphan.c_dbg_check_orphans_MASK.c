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
struct ubifs_info {int dummy; } ;
struct check_info {int missing; int /*<<< orphan*/  node; int /*<<< orphan*/  root; scalar_t__ leaf_cnt; scalar_t__ tot_inos; scalar_t__ last_ino; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  RB_ROOT ; 
 int /*<<< orphan*/  UBIFS_MAX_INO_NODE_SZ ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ubifs_info*) ; 
 int /*<<< orphan*/  dbg_orphan_check ; 
 int FUNC3 (struct ubifs_info*,struct check_info*) ; 
 int FUNC4 (struct ubifs_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct check_info*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ubifs_info*,char*,...) ; 

__attribute__((used)) static int FUNC8(struct ubifs_info *c)
{
	struct check_info ci;
	int err;

	if (!FUNC2(c))
		return 0;

	ci.last_ino = 0;
	ci.tot_inos = 0;
	ci.missing  = 0;
	ci.leaf_cnt = 0;
	ci.root = RB_ROOT;
	ci.node = FUNC6(UBIFS_MAX_INO_NODE_SZ, GFP_NOFS);
	if (!ci.node) {
		FUNC7(c, "out of memory");
		return -ENOMEM;
	}

	err = FUNC3(c, &ci);
	if (err)
		goto out;

	err = FUNC4(c, &dbg_orphan_check, NULL, &ci);
	if (err) {
		FUNC7(c, "cannot scan TNC, error %d", err);
		goto out;
	}

	if (ci.missing) {
		FUNC7(c, "%lu missing orphan(s)", ci.missing);
		err = -EINVAL;
		goto out;
	}

	FUNC0("last inode number is %lu", ci.last_ino);
	FUNC0("total number of inodes is %lu", ci.tot_inos);
	FUNC0("total number of leaf nodes is %llu", ci.leaf_cnt);

out:
	FUNC1(&ci.root);
	FUNC5(ci.node);
	return err;
}