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
typedef  int /*<<< orphan*/  u64 ;
struct inode {int dummy; } ;
struct gfs2_inode {int /*<<< orphan*/  i_gl; } ;
struct gfs2_holder {int dummy; } ;
struct fiemap_extent_info {int dummy; } ;

/* Variables and functions */
 struct gfs2_inode* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  LM_ST_SHARED ; 
 int /*<<< orphan*/  FUNC1 (struct gfs2_holder*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gfs2_holder*) ; 
 int /*<<< orphan*/  gfs2_iomap_ops ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int FUNC5 (struct inode*,struct fiemap_extent_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct inode *inode, struct fiemap_extent_info *fieinfo,
		       u64 start, u64 len)
{
	struct gfs2_inode *ip = FUNC0(inode);
	struct gfs2_holder gh;
	int ret;

	FUNC3(inode);

	ret = FUNC2(ip->i_gl, LM_ST_SHARED, 0, &gh);
	if (ret)
		goto out;

	ret = FUNC5(inode, fieinfo, start, len, &gfs2_iomap_ops);

	FUNC1(&gh);

out:
	FUNC4(inode);
	return ret;
}