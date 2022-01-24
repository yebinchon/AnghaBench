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
struct inode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_mode; } ;
struct gfs2_inode {int /*<<< orphan*/  i_gl; TYPE_1__ i_inode; } ;
struct gfs2_holder {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 struct gfs2_inode* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  LM_FLAG_ANY ; 
 int /*<<< orphan*/  LM_ST_SHARED ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gfs2_holder*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gfs2_holder*) ; 
 int FUNC4 (struct inode*,struct file*) ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *file)
{
	struct gfs2_inode *ip = FUNC0(inode);
	struct gfs2_holder i_gh;
	int error;
	bool need_unlock = false;

	if (FUNC1(ip->i_inode.i_mode)) {
		error = FUNC3(ip->i_gl, LM_ST_SHARED, LM_FLAG_ANY,
					   &i_gh);
		if (error)
			return error;
		need_unlock = true;
	}

	error = FUNC4(inode, file);

	if (need_unlock)
		FUNC2(&i_gh);

	return error;
}