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
typedef  union ubifs_key {int dummy; } ubifs_key ;
struct ubifs_znode {TYPE_1__* zbranch; } ;
struct ubifs_info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ FUNC0 (struct ubifs_info*,int /*<<< orphan*/ *,union ubifs_key const*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int,int) ; 
 int FUNC2 (struct ubifs_info*,struct ubifs_znode**,int*) ; 
 int FUNC3 (struct ubifs_info*,struct ubifs_znode**,int*) ; 

__attribute__((used)) static int FUNC4(struct ubifs_info *c,
				      const union ubifs_key *key,
				      struct ubifs_znode **zn, int *n,
				      int lnum, int offs)
{
	struct ubifs_znode *znode;
	int nn, err;

	znode = *zn;
	nn = *n;
	if (FUNC1(&znode->zbranch[nn], lnum, offs))
		return 1;

	/* Look left */
	while (1) {
		err = FUNC3(c, &znode, &nn);
		if (err == -ENOENT)
			break;
		if (err < 0)
			return err;
		if (FUNC0(c, &znode->zbranch[nn].key, key))
			break;
		if (FUNC1(&znode->zbranch[nn], lnum, offs)) {
			*zn = znode;
			*n = nn;
			return 1;
		}
	}

	/* Look right */
	znode = *zn;
	nn = *n;
	while (1) {
		err = FUNC2(c, &znode, &nn);
		if (err == -ENOENT)
			return 0;
		if (err < 0)
			return err;
		if (FUNC0(c, &znode->zbranch[nn].key, key))
			return 0;
		*zn = znode;
		*n = nn;
		if (FUNC1(&znode->zbranch[nn], lnum, offs))
			return 1;
	}
}