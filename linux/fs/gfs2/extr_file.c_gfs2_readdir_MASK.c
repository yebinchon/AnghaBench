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
struct gfs2_inode {int /*<<< orphan*/  i_gl; } ;
struct gfs2_holder {int dummy; } ;
struct file {int /*<<< orphan*/  f_ra; TYPE_1__* f_mapping; } ;
struct dir_context {int dummy; } ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 struct gfs2_inode* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  LM_ST_SHARED ; 
 int FUNC1 (struct inode*,struct dir_context*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct gfs2_holder*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gfs2_holder*) ; 

__attribute__((used)) static int FUNC4(struct file *file, struct dir_context *ctx)
{
	struct inode *dir = file->f_mapping->host;
	struct gfs2_inode *dip = FUNC0(dir);
	struct gfs2_holder d_gh;
	int error;

	error = FUNC3(dip->i_gl, LM_ST_SHARED, 0, &d_gh);
	if (error)
		return error;

	error = FUNC1(dir, ctx, &file->f_ra);

	FUNC2(&d_gh);

	return error;
}