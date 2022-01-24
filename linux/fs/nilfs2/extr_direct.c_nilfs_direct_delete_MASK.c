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
union nilfs_bmap_ptr_req {scalar_t__ bpr_ptr; } ;
struct nilfs_bmap {int /*<<< orphan*/  b_inode; } ;
struct inode {int dummy; } ;
typedef  scalar_t__ __u64 ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ NILFS_BMAP_INVALID_PTR ; 
 scalar_t__ FUNC0 (struct nilfs_bmap*) ; 
 scalar_t__ NILFS_DIRECT_KEY_MAX ; 
 int /*<<< orphan*/  FUNC1 (struct nilfs_bmap*,union nilfs_bmap_ptr_req*,struct inode*) ; 
 struct inode* FUNC2 (struct nilfs_bmap*) ; 
 int FUNC3 (struct nilfs_bmap*,union nilfs_bmap_ptr_req*,struct inode*) ; 
 scalar_t__ FUNC4 (struct nilfs_bmap*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct nilfs_bmap*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct nilfs_bmap *bmap, __u64 key)
{
	union nilfs_bmap_ptr_req req;
	struct inode *dat;
	int ret;

	if (key > NILFS_DIRECT_KEY_MAX ||
	    FUNC4(bmap, key) == NILFS_BMAP_INVALID_PTR)
		return -ENOENT;

	dat = FUNC0(bmap) ? FUNC2(bmap) : NULL;
	req.bpr_ptr = FUNC4(bmap, key);

	ret = FUNC3(bmap, &req, dat);
	if (!ret) {
		FUNC1(bmap, &req, dat);
		FUNC5(bmap, key, NILFS_BMAP_INVALID_PTR);
		FUNC6(bmap->b_inode, 1);
	}
	return ret;
}