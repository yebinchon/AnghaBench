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
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  __u64 ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct nilfs_bmap*) ; 
 int /*<<< orphan*/  FUNC5 (struct nilfs_bmap*) ; 
 struct nilfs_btree_path* FUNC6 () ; 
 int FUNC7 (struct nilfs_bmap*,struct nilfs_btree_path*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct nilfs_btree_path*) ; 
 int FUNC9 (struct nilfs_bmap*,int /*<<< orphan*/ ,struct buffer_head**) ; 

__attribute__((used)) static int FUNC10(struct nilfs_bmap *btree, __u64 key, int level)
{
	struct buffer_head *bh;
	struct nilfs_btree_path *path;
	__u64 ptr;
	int ret;

	path = FUNC6();
	if (path == NULL)
		return -ENOMEM;

	ret = FUNC7(btree, path, key, &ptr, level + 1, 0);
	if (ret < 0) {
		FUNC0(ret == -ENOENT);
		goto out;
	}
	ret = FUNC9(btree, ptr, &bh);
	if (ret < 0) {
		FUNC0(ret == -ENOENT);
		goto out;
	}

	if (!FUNC2(bh))
		FUNC3(bh);
	FUNC1(bh);
	if (!FUNC4(btree))
		FUNC5(btree);

 out:
	FUNC8(path);
	return ret;
}