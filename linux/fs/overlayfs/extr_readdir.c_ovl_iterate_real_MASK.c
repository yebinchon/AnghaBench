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
struct path {struct dentry* dentry; } ;
struct TYPE_4__ {int /*<<< orphan*/  pos; int /*<<< orphan*/  actor; } ;
struct ovl_readdir_translate {TYPE_2__ ctx; int /*<<< orphan*/  cache; int /*<<< orphan*/  parent_ino; int /*<<< orphan*/  fsid; scalar_t__ xinobits; struct dir_context* orig_ctx; } ;
struct ovl_layer {int /*<<< orphan*/  fsid; } ;
struct ovl_dir_file {int /*<<< orphan*/  realfile; } ;
struct kstat {scalar_t__ dev; int /*<<< orphan*/  ino; } ;
struct file {struct path f_path; struct ovl_dir_file* private_data; } ;
struct dir_context {int /*<<< orphan*/  pos; } ;
struct dentry {TYPE_1__* d_sb; struct dentry* d_parent; } ;
struct TYPE_3__ {scalar_t__ s_dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATX_INO ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct path*) ; 
 int /*<<< orphan*/  ovl_fill_real ; 
 scalar_t__ FUNC6 (struct file*) ; 
 struct ovl_layer* FUNC7 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC8 (struct dentry*) ; 
 scalar_t__ FUNC9 (TYPE_1__*) ; 
 int FUNC10 (struct path*,struct kstat*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct file *file, struct dir_context *ctx)
{
	int err;
	struct ovl_dir_file *od = file->private_data;
	struct dentry *dir = file->f_path.dentry;
	struct ovl_layer *lower_layer = FUNC7(dir);
	struct ovl_readdir_translate rdt = {
		.ctx.actor = ovl_fill_real,
		.orig_ctx = ctx,
		.xinobits = FUNC9(dir->d_sb),
	};

	if (rdt.xinobits && lower_layer)
		rdt.fsid = lower_layer->fsid;

	if (FUNC1(FUNC8(dir->d_parent))) {
		struct kstat stat;
		struct path statpath = file->f_path;

		statpath.dentry = dir->d_parent;
		err = FUNC10(&statpath, &stat, STATX_INO, 0);
		if (err)
			return err;

		FUNC3(dir->d_sb->s_dev != stat.dev);
		rdt.parent_ino = stat.ino;
	}

	if (FUNC6(file)) {
		rdt.cache = FUNC5(&file->f_path);
		if (FUNC0(rdt.cache))
			return FUNC2(rdt.cache);
	}

	err = FUNC4(od->realfile, &rdt.ctx);
	ctx->pos = rdt.ctx.pos;

	return err;
}