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
union nilfs_bmap_ptr_req {int /*<<< orphan*/  bpr_ptr; } ;
struct nilfs_bmap {int /*<<< orphan*/  b_inode; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef  scalar_t__ __u64 ;

/* Variables and functions */
 int EEXIST ; 
 int ENOENT ; 
 scalar_t__ NILFS_BMAP_INVALID_PTR ; 
 scalar_t__ FUNC0 (struct nilfs_bmap*) ; 
 scalar_t__ NILFS_DIRECT_KEY_MAX ; 
 int /*<<< orphan*/  FUNC1 (struct nilfs_bmap*,union nilfs_bmap_ptr_req*,struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct nilfs_bmap*) ; 
 struct inode* FUNC3 (struct nilfs_bmap*) ; 
 int FUNC4 (struct nilfs_bmap*,union nilfs_bmap_ptr_req*,struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct nilfs_bmap*) ; 
 int /*<<< orphan*/  FUNC6 (struct nilfs_bmap*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct nilfs_bmap*,scalar_t__) ; 
 scalar_t__ FUNC8 (struct nilfs_bmap*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct nilfs_bmap*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct buffer_head*) ; 

__attribute__((used)) static int FUNC12(struct nilfs_bmap *bmap, __u64 key, __u64 ptr)
{
	union nilfs_bmap_ptr_req req;
	struct inode *dat = NULL;
	struct buffer_head *bh;
	int ret;

	if (key > NILFS_DIRECT_KEY_MAX)
		return -ENOENT;
	if (FUNC8(bmap, key) != NILFS_BMAP_INVALID_PTR)
		return -EEXIST;

	if (FUNC0(bmap)) {
		req.bpr_ptr = FUNC7(bmap, key);
		dat = FUNC3(bmap);
	}
	ret = FUNC4(bmap, &req, dat);
	if (!ret) {
		/* ptr must be a pointer to a buffer head. */
		bh = (struct buffer_head *)((unsigned long)ptr);
		FUNC11(bh);

		FUNC1(bmap, &req, dat);
		FUNC9(bmap, key, req.bpr_ptr);

		if (!FUNC2(bmap))
			FUNC5(bmap);

		if (FUNC0(bmap))
			FUNC6(bmap, key, req.bpr_ptr);

		FUNC10(bmap->b_inode, 1);
	}
	return ret;
}