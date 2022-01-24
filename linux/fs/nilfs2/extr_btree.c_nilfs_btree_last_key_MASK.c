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
struct nilfs_btree_path {int dummy; } ;
struct nilfs_bmap {int dummy; } ;
typedef  int /*<<< orphan*/  __u64 ;

/* Variables and functions */
 int ENOMEM ; 
 struct nilfs_btree_path* FUNC0 () ; 
 int FUNC1 (struct nilfs_bmap const*,struct nilfs_btree_path*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nilfs_btree_path*) ; 

__attribute__((used)) static int FUNC3(const struct nilfs_bmap *btree, __u64 *keyp)
{
	struct nilfs_btree_path *path;
	int ret;

	path = FUNC0();
	if (path == NULL)
		return -ENOMEM;

	ret = FUNC1(btree, path, keyp, NULL);

	FUNC2(path);

	return ret;
}