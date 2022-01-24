#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ubifs_znode {size_t iip; int child_cnt; scalar_t__ level; TYPE_2__* zbranch; TYPE_1__* parent; } ;
struct ubifs_zbranch {int /*<<< orphan*/  znode; } ;
struct ubifs_info {int /*<<< orphan*/  dirty_zn_cnt; int /*<<< orphan*/  clean_zn_cnt; int /*<<< orphan*/  replaying; struct ubifs_zbranch zroot; int /*<<< orphan*/  tnc_mutex; } ;
struct TYPE_5__ {int /*<<< orphan*/  key; } ;
struct TYPE_4__ {struct ubifs_zbranch* zbranch; } ;

/* Variables and functions */
 int EINVAL ; 
 long FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct ubifs_info*,TYPE_2__*,TYPE_2__*) ; 
 int FUNC2 (struct ubifs_info*,struct ubifs_zbranch*) ; 
 int /*<<< orphan*/  FUNC3 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct ubifs_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ubifs_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ubifs_info*,struct ubifs_znode*) ; 
 int /*<<< orphan*/  FUNC8 (struct ubifs_info*,char*,long,long) ; 
 int /*<<< orphan*/  FUNC9 (struct ubifs_info*,char*) ; 
 struct ubifs_znode* FUNC10 (int /*<<< orphan*/ ) ; 
 struct ubifs_znode* FUNC11 (struct ubifs_info*,struct ubifs_znode*) ; 
 scalar_t__ FUNC12 (struct ubifs_znode*) ; 

int FUNC13(struct ubifs_info *c, int extra)
{
	struct ubifs_znode *znode;
	long clean_cnt = 0, dirty_cnt = 0;
	int err, last;

	if (!FUNC3(c))
		return 0;

	FUNC6(c, FUNC5(&c->tnc_mutex));
	if (!c->zroot.znode)
		return 0;

	znode = FUNC10(c->zroot.znode);
	while (1) {
		struct ubifs_znode *prev;
		struct ubifs_zbranch *zbr;

		if (!znode->parent)
			zbr = &c->zroot;
		else
			zbr = &znode->parent->zbranch[znode->iip];

		err = FUNC2(c, zbr);
		if (err)
			return err;

		if (extra) {
			if (FUNC12(znode))
				dirty_cnt += 1;
			else
				clean_cnt += 1;
		}

		prev = znode;
		znode = FUNC11(c, znode);
		if (!znode)
			break;

		/*
		 * If the last key of this znode is equivalent to the first key
		 * of the next znode (collision), then check order of the keys.
		 */
		last = prev->child_cnt - 1;
		if (prev->level == 0 && znode->level == 0 && !c->replaying &&
		    !FUNC4(c, &prev->zbranch[last].key,
			      &znode->zbranch[0].key)) {
			err = FUNC1(c, &prev->zbranch[last],
						  &znode->zbranch[0]);
			if (err < 0)
				return err;
			if (err) {
				FUNC9(c, "first znode");
				FUNC7(c, prev);
				FUNC9(c, "second znode");
				FUNC7(c, znode);
				return -EINVAL;
			}
		}
	}

	if (extra) {
		if (clean_cnt != FUNC0(&c->clean_zn_cnt)) {
			FUNC8(c, "incorrect clean_zn_cnt %ld, calculated %ld",
				  FUNC0(&c->clean_zn_cnt),
				  clean_cnt);
			return -EINVAL;
		}
		if (dirty_cnt != FUNC0(&c->dirty_zn_cnt)) {
			FUNC8(c, "incorrect dirty_zn_cnt %ld, calculated %ld",
				  FUNC0(&c->dirty_zn_cnt),
				  dirty_cnt);
			return -EINVAL;
		}
	}

	return 0;
}