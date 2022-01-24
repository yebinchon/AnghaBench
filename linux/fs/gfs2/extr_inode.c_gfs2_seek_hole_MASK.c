#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inode {TYPE_1__* i_sb; } ;
struct gfs2_inode {int /*<<< orphan*/  i_gl; } ;
struct gfs2_holder {int dummy; } ;
struct file {TYPE_2__* f_mapping; } ;
typedef  scalar_t__ loff_t ;
struct TYPE_4__ {struct inode* host; } ;
struct TYPE_3__ {int /*<<< orphan*/  s_maxbytes; } ;

/* Variables and functions */
 struct gfs2_inode* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  LM_ST_SHARED ; 
 int /*<<< orphan*/  FUNC1 (struct gfs2_holder*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gfs2_holder*) ; 
 int /*<<< orphan*/  gfs2_iomap_ops ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 scalar_t__ FUNC5 (struct inode*,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct file*,scalar_t__,int /*<<< orphan*/ ) ; 

loff_t FUNC7(struct file *file, loff_t offset)
{
	struct inode *inode = file->f_mapping->host;
	struct gfs2_inode *ip = FUNC0(inode);
	struct gfs2_holder gh;
	loff_t ret;

	FUNC3(inode);
	ret = FUNC2(ip->i_gl, LM_ST_SHARED, 0, &gh);
	if (!ret)
		ret = FUNC5(inode, offset, &gfs2_iomap_ops);
	FUNC1(&gh);
	FUNC4(inode);

	if (ret < 0)
		return ret;
	return FUNC6(file, ret, inode->i_sb->s_maxbytes);
}