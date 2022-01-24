#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ubifs_zbranch {int /*<<< orphan*/  key; } ;
struct ubifs_info {int dummy; } ;
struct check_info {scalar_t__ last_ino; int tot_inos; int missing; int leaf_cnt; int /*<<< orphan*/  root; TYPE_1__* node; } ;
typedef  scalar_t__ ino_t ;
struct TYPE_2__ {scalar_t__ nlink; } ;

/* Variables and functions */
 scalar_t__ UBIFS_INO_KEY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct ubifs_info*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct ubifs_info*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct ubifs_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ubifs_info*,char*,unsigned long,...) ; 
 int FUNC5 (struct ubifs_info*,struct ubifs_zbranch*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC6(struct ubifs_info *c, struct ubifs_zbranch *zbr,
			    void *priv)
{
	struct check_info *ci = priv;
	ino_t inum;
	int err;

	inum = FUNC2(c, &zbr->key);
	if (inum != ci->last_ino) {
		/* Lowest node type is the inode node, so it comes first */
		if (FUNC3(c, &zbr->key) != UBIFS_INO_KEY)
			FUNC4(c, "found orphan node ino %lu, type %d",
				  (unsigned long)inum, FUNC3(c, &zbr->key));
		ci->last_ino = inum;
		ci->tot_inos += 1;
		err = FUNC5(c, zbr, ci->node);
		if (err) {
			FUNC4(c, "node read failed, error %d", err);
			return err;
		}
		if (ci->node->nlink == 0)
			/* Must be recorded as an orphan */
			if (!FUNC0(&ci->root, inum) &&
			    !FUNC1(c, inum)) {
				FUNC4(c, "missing orphan, ino %lu",
					  (unsigned long)inum);
				ci->missing += 1;
			}
	}
	ci->leaf_cnt += 1;
	return 0;
}