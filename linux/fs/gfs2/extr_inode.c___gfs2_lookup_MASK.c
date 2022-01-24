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
struct inode {int /*<<< orphan*/  i_mode; int /*<<< orphan*/  d_name; } ;
struct gfs2_holder {int dummy; } ;
struct gfs2_glock {int dummy; } ;
struct file {int dummy; } ;
struct dentry {int /*<<< orphan*/  i_mode; int /*<<< orphan*/  d_name; } ;
struct TYPE_2__ {struct gfs2_glock* i_gl; } ;

/* Variables and functions */
 struct inode* FUNC0 (struct inode*) ; 
 struct inode* FUNC1 (int) ; 
 TYPE_1__* FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  LM_FLAG_ANY ; 
 int /*<<< orphan*/  LM_ST_SHARED ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int /*<<< orphan*/ *) ; 
 struct inode* FUNC6 (struct inode*,struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int FUNC8 (struct file*,struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct gfs2_holder*) ; 
 int FUNC10 (struct gfs2_glock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gfs2_holder*) ; 
 struct inode* FUNC11 (struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gfs2_open_common ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 

__attribute__((used)) static struct dentry *FUNC13(struct inode *dir, struct dentry *dentry,
				    struct file *file)
{
	struct inode *inode;
	struct dentry *d;
	struct gfs2_holder gh;
	struct gfs2_glock *gl;
	int error;

	inode = FUNC11(dir, &dentry->d_name, 0);
	if (inode == NULL) {
		FUNC5(dentry, NULL);
		return NULL;
	}
	if (FUNC3(inode))
		return FUNC0(inode);

	gl = FUNC2(inode)->i_gl;
	error = FUNC10(gl, LM_ST_SHARED, LM_FLAG_ANY, &gh);
	if (error) {
		FUNC12(inode);
		return FUNC1(error);
	}

	d = FUNC6(inode, dentry);
	if (FUNC3(d)) {
		FUNC9(&gh);
		return d;
	}
	if (file && FUNC4(inode->i_mode))
		error = FUNC8(file, dentry, gfs2_open_common);

	FUNC9(&gh);
	if (error) {
		FUNC7(d);
		return FUNC1(error);
	}
	return d;
}