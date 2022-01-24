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
typedef  void* time64_t ;
struct ubifs_znode {int /*<<< orphan*/  level; struct ubifs_zbranch* zbranch; void* time; } ;
struct ubifs_zbranch {int /*<<< orphan*/  key; struct ubifs_znode* znode; } ;
struct ubifs_info {struct ubifs_zbranch zroot; } ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ FUNC0 (struct ubifs_znode*) ; 
 int FUNC1 (struct ubifs_znode*) ; 
 scalar_t__ UBIFS_INVALID_KEY ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (union ubifs_key const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct ubifs_info*,union ubifs_key const*) ; 
 scalar_t__ FUNC5 (struct ubifs_info*,union ubifs_key const*) ; 
 scalar_t__ FUNC6 (struct ubifs_info*,union ubifs_key const*,int /*<<< orphan*/ *) ; 
 void* FUNC7 () ; 
 int FUNC8 (struct ubifs_info*,struct ubifs_znode**,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct ubifs_info*,int) ; 
 struct ubifs_znode* FUNC10 (struct ubifs_info*,struct ubifs_zbranch*,struct ubifs_znode*,int) ; 
 int FUNC11 (struct ubifs_info*,struct ubifs_znode*,union ubifs_key const*,int*) ; 
 scalar_t__ FUNC12 (int) ; 

int FUNC13(struct ubifs_info *c, const union ubifs_key *key,
			struct ubifs_znode **zn, int *n)
{
	int err, exact;
	struct ubifs_znode *znode;
	time64_t time = FUNC7();

	FUNC3(key, "search key ");
	FUNC9(c, FUNC5(c, key) < UBIFS_INVALID_KEY);

	znode = c->zroot.znode;
	if (FUNC12(!znode)) {
		znode = FUNC10(c, &c->zroot, NULL, 0);
		if (FUNC0(znode))
			return FUNC1(znode);
	}

	znode->time = time;

	while (1) {
		struct ubifs_zbranch *zbr;

		exact = FUNC11(c, znode, key, n);

		if (znode->level == 0)
			break;

		if (*n < 0)
			*n = 0;
		zbr = &znode->zbranch[*n];

		if (zbr->znode) {
			znode->time = time;
			znode = zbr->znode;
			continue;
		}

		/* znode is not in TNC cache, load it from the media */
		znode = FUNC10(c, zbr, znode, *n);
		if (FUNC0(znode))
			return FUNC1(znode);
	}

	*zn = znode;
	if (exact || !FUNC4(c, key) || *n != -1) {
		FUNC2("found %d, lvl %d, n %d", exact, znode->level, *n);
		return exact;
	}

	/*
	 * Here is a tricky place. We have not found the key and this is a
	 * "hashed" key, which may collide. The rest of the code deals with
	 * situations like this:
	 *
	 *                  | 3 | 5 |
	 *                  /       \
	 *          | 3 | 5 |      | 6 | 7 | (x)
	 *
	 * Or more a complex example:
	 *
	 *                | 1 | 5 |
	 *                /       \
	 *       | 1 | 3 |         | 5 | 8 |
	 *              \           /
	 *          | 5 | 5 |   | 6 | 7 | (x)
	 *
	 * In the examples, if we are looking for key "5", we may reach nodes
	 * marked with "(x)". In this case what we have do is to look at the
	 * left and see if there is "5" key there. If there is, we have to
	 * return it.
	 *
	 * Note, this whole situation is possible because we allow to have
	 * elements which are equivalent to the next key in the parent in the
	 * children of current znode. For example, this happens if we split a
	 * znode like this: | 3 | 5 | 5 | 6 | 7 |, which results in something
	 * like this:
	 *                      | 3 | 5 |
	 *                       /     \
	 *                | 3 | 5 |   | 5 | 6 | 7 |
	 *                              ^
	 * And this becomes what is at the first "picture" after key "5" marked
	 * with "^" is removed. What could be done is we could prohibit
	 * splitting in the middle of the colliding sequence. Also, when
	 * removing the leftmost key, we would have to correct the key of the
	 * parent node, which would introduce additional complications. Namely,
	 * if we changed the leftmost key of the parent znode, the garbage
	 * collector would be unable to find it (GC is doing this when GC'ing
	 * indexing LEBs). Although we already have an additional RB-tree where
	 * we save such changed znodes (see 'ins_clr_old_idx_znode()') until
	 * after the commit. But anyway, this does not look easy to implement
	 * so we did not try this.
	 */
	err = FUNC8(c, &znode, n);
	if (err == -ENOENT) {
		FUNC2("found 0, lvl %d, n -1", znode->level);
		*n = -1;
		return 0;
	}
	if (FUNC12(err < 0))
		return err;
	if (FUNC6(c, key, &znode->zbranch[*n].key)) {
		FUNC2("found 0, lvl %d, n -1", znode->level);
		*n = -1;
		return 0;
	}

	FUNC2("found 1, lvl %d, n %d", znode->level, *n);
	*zn = znode;
	return 1;
}