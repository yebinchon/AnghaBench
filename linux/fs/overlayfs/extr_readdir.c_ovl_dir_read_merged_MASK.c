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
struct rb_root {int dummy; } ;
struct path {scalar_t__ dentry; } ;
struct TYPE_2__ {int /*<<< orphan*/  actor; } ;
struct ovl_readdir_data {int is_lowest; int is_upper; int /*<<< orphan*/  middle; struct list_head* list; struct rb_root* root; struct dentry* dentry; TYPE_1__ ctx; } ;
struct list_head {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct dentry*) ; 
 int FUNC3 (struct path*,struct ovl_readdir_data*) ; 
 int /*<<< orphan*/  ovl_fill_merge ; 
 int FUNC4 (int,struct dentry*,struct path*) ; 

__attribute__((used)) static int FUNC5(struct dentry *dentry, struct list_head *list,
	struct rb_root *root)
{
	int err;
	struct path realpath;
	struct ovl_readdir_data rdd = {
		.ctx.actor = ovl_fill_merge,
		.dentry = dentry,
		.list = list,
		.root = root,
		.is_lowest = false,
	};
	int idx, next;

	for (idx = 0; idx != -1; idx = next) {
		next = FUNC4(idx, dentry, &realpath);
		rdd.is_upper = FUNC2(dentry) == realpath.dentry;

		if (next != -1) {
			err = FUNC3(&realpath, &rdd);
			if (err)
				break;
		} else {
			/*
			 * Insert lowest layer entries before upper ones, this
			 * allows offsets to be reasonably constant
			 */
			FUNC0(&rdd.middle, rdd.list);
			rdd.is_lowest = true;
			err = FUNC3(&realpath, &rdd);
			FUNC1(&rdd.middle);
		}
	}
	return err;
}