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
struct ubifs_znode {int /*<<< orphan*/  level; scalar_t__ cnext; struct ubifs_zbranch* zbranch; void* time; } ;
struct ubifs_zbranch {int /*<<< orphan*/  key; struct ubifs_znode* znode; } ;
struct ubifs_info {struct ubifs_zbranch zroot; } ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ FUNC0 (struct ubifs_znode*) ; 
 int FUNC1 (struct ubifs_znode*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (union ubifs_key const*,char*) ; 
 struct ubifs_znode* FUNC4 (struct ubifs_info*,struct ubifs_znode*) ; 
 struct ubifs_znode* FUNC5 (struct ubifs_info*,struct ubifs_zbranch*) ; 
 int /*<<< orphan*/  FUNC6 (struct ubifs_info*,union ubifs_key const*) ; 
 scalar_t__ FUNC7 (struct ubifs_info*,union ubifs_key const*,int /*<<< orphan*/ *) ; 
 void* FUNC8 () ; 
 int FUNC9 (struct ubifs_info*,struct ubifs_znode**,int*) ; 
 struct ubifs_znode* FUNC10 (struct ubifs_info*,struct ubifs_zbranch*,struct ubifs_znode*,int) ; 
 int FUNC11 (struct ubifs_info*,struct ubifs_znode*,union ubifs_key const*,int*) ; 
 int /*<<< orphan*/  FUNC12 (struct ubifs_znode*) ; 
 scalar_t__ FUNC13 (int) ; 

__attribute__((used)) static int FUNC14(struct ubifs_info *c, const union ubifs_key *key,
			       struct ubifs_znode **zn, int *n)
{
	int err, exact;
	struct ubifs_znode *znode;
	time64_t time = FUNC8();

	FUNC3(key, "search and dirty key ");

	znode = c->zroot.znode;
	if (FUNC13(!znode)) {
		znode = FUNC10(c, &c->zroot, NULL, 0);
		if (FUNC0(znode))
			return FUNC1(znode);
	}

	znode = FUNC5(c, &c->zroot);
	if (FUNC0(znode))
		return FUNC1(znode);

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
			znode = FUNC5(c, zbr);
			if (FUNC0(znode))
				return FUNC1(znode);
			continue;
		}

		/* znode is not in TNC cache, load it from the media */
		znode = FUNC10(c, zbr, znode, *n);
		if (FUNC0(znode))
			return FUNC1(znode);
		znode = FUNC5(c, zbr);
		if (FUNC0(znode))
			return FUNC1(znode);
	}

	*zn = znode;
	if (exact || !FUNC6(c, key) || *n != -1) {
		FUNC2("found %d, lvl %d, n %d", exact, znode->level, *n);
		return exact;
	}

	/*
	 * See huge comment at 'lookup_level0_dirty()' what is the rest of the
	 * code.
	 */
	err = FUNC9(c, &znode, n);
	if (err == -ENOENT) {
		*n = -1;
		FUNC2("found 0, lvl %d, n -1", znode->level);
		return 0;
	}
	if (FUNC13(err < 0))
		return err;
	if (FUNC7(c, key, &znode->zbranch[*n].key)) {
		*n = -1;
		FUNC2("found 0, lvl %d, n -1", znode->level);
		return 0;
	}

	if (znode->cnext || !FUNC12(znode)) {
		znode = FUNC4(c, znode);
		if (FUNC0(znode))
			return FUNC1(znode);
	}

	FUNC2("found 1, lvl %d, n %d", znode->level, *n);
	*zn = znode;
	return 1;
}