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
struct ubifs_znode {struct ubifs_zbranch* zbranch; } ;
struct ubifs_zbranch {int lnum; int offs; int /*<<< orphan*/  key; } ;
struct ubifs_info {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct ubifs_info*,union ubifs_key*) ; 
 scalar_t__ FUNC1 (struct ubifs_info*,union ubifs_key*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct ubifs_info*,struct ubifs_znode**,int*) ; 
 int FUNC3 (struct ubifs_info*,struct ubifs_znode**,int*) ; 
 int FUNC4 (struct ubifs_info*,union ubifs_key*,struct ubifs_znode**,int*) ; 

__attribute__((used)) static int FUNC5(struct ubifs_info *c, union ubifs_key *key,
			       int lnum, int offs)
{
	struct ubifs_zbranch *zbr;
	struct ubifs_znode *znode, *zn;
	int n, found, err, nn;
	const int unique = !FUNC0(c, key);

	found = FUNC4(c, key, &znode, &n);
	if (found < 0)
		return found; /* Error code */
	if (!found)
		return 0;
	zbr = &znode->zbranch[n];
	if (lnum == zbr->lnum && offs == zbr->offs)
		return 1; /* Found it */
	if (unique)
		return 0;
	/*
	 * Because the key is not unique, we have to look left
	 * and right as well
	 */
	zn = znode;
	nn = n;
	/* Look left */
	while (1) {
		err = FUNC3(c, &znode, &n);
		if (err == -ENOENT)
			break;
		if (err)
			return err;
		if (FUNC1(c, key, &znode->zbranch[n].key))
			break;
		zbr = &znode->zbranch[n];
		if (lnum == zbr->lnum && offs == zbr->offs)
			return 1; /* Found it */
	}
	/* Look right */
	znode = zn;
	n = nn;
	while (1) {
		err = FUNC2(c, &znode, &n);
		if (err) {
			if (err == -ENOENT)
				return 0;
			return err;
		}
		if (FUNC1(c, key, &znode->zbranch[n].key))
			break;
		zbr = &znode->zbranch[n];
		if (lnum == zbr->lnum && offs == zbr->offs)
			return 1; /* Found it */
	}
	return 0;
}