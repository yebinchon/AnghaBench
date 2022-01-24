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
struct path {int /*<<< orphan*/  dentry; } ;
struct TYPE_2__ {scalar_t__ pos; } ;
struct ovl_readdir_data {int err; scalar_t__ dentry; int /*<<< orphan*/ * first_maybe_whiteout; TYPE_1__ ctx; scalar_t__ count; } ;
struct file {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct file*) ; 
 int O_DIRECTORY ; 
 int O_RDONLY ; 
 int FUNC1 (struct file*) ; 
 int /*<<< orphan*/  FUNC2 (struct file*) ; 
 int FUNC3 (struct file*,TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct ovl_readdir_data*) ; 
 struct file* FUNC5 (struct path*,int) ; 

__attribute__((used)) static inline int FUNC6(struct path *realpath,
			       struct ovl_readdir_data *rdd)
{
	struct file *realfile;
	int err;

	realfile = FUNC5(realpath, O_RDONLY | O_DIRECTORY);
	if (FUNC0(realfile))
		return FUNC1(realfile);

	rdd->first_maybe_whiteout = NULL;
	rdd->ctx.pos = 0;
	do {
		rdd->count = 0;
		rdd->err = 0;
		err = FUNC3(realfile, &rdd->ctx);
		if (err >= 0)
			err = rdd->err;
	} while (!err && rdd->count);

	if (!err && rdd->first_maybe_whiteout && rdd->dentry)
		err = FUNC4(realpath->dentry, rdd);

	FUNC2(realfile);

	return err;
}