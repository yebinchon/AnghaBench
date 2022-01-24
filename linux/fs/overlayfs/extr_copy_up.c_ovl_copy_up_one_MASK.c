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
struct TYPE_2__ {int /*<<< orphan*/  mode; scalar_t__ size; } ;
struct ovl_copy_up_ctx {int /*<<< orphan*/  link; struct path lowerpath; TYPE_1__ stat; TYPE_1__ pstat; int /*<<< orphan*/  destname; int /*<<< orphan*/  destdir; int /*<<< orphan*/  metacopy; int /*<<< orphan*/  workdir; struct dentry* dentry; struct dentry* parent; } ;
struct dentry {int /*<<< orphan*/  d_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT_STATX_SYNC_AS_STAT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EROFS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int O_TRUNC ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int STATX_ATIME ; 
 int STATX_BASIC_STATS ; 
 int STATX_MTIME ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  done ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*) ; 
 int FUNC7 (struct ovl_copy_up_ctx*) ; 
 int FUNC8 (struct dentry*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct dentry*) ; 
 scalar_t__ FUNC10 (struct dentry*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct dentry*) ; 
 int FUNC12 (struct ovl_copy_up_ctx*) ; 
 int FUNC13 (struct ovl_copy_up_ctx*) ; 
 int /*<<< orphan*/  FUNC14 (struct dentry*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct dentry*,struct path*) ; 
 int /*<<< orphan*/  FUNC16 (struct dentry*,struct path*) ; 
 int /*<<< orphan*/  FUNC17 (struct dentry*) ; 
 scalar_t__ FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC20 (struct path*,TYPE_1__*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC21(struct dentry *parent, struct dentry *dentry,
			   int flags)
{
	int err;
	FUNC0(done);
	struct path parentpath;
	struct ovl_copy_up_ctx ctx = {
		.parent = parent,
		.dentry = dentry,
		.workdir = FUNC17(dentry),
	};

	if (FUNC4(!ctx.workdir))
		return -EROFS;

	FUNC15(dentry, &ctx.lowerpath);
	err = FUNC20(&ctx.lowerpath, &ctx.stat,
			  STATX_BASIC_STATS, AT_STATX_SYNC_AS_STAT);
	if (err)
		return err;

	ctx.metacopy = FUNC14(dentry, ctx.stat.mode, flags);

	if (parent) {
		FUNC16(parent, &parentpath);
		ctx.destdir = parentpath.dentry;
		ctx.destname = dentry->d_name;

		err = FUNC20(&parentpath, &ctx.pstat,
				  STATX_ATIME | STATX_MTIME,
				  AT_STATX_SYNC_AS_STAT);
		if (err)
			return err;
	}

	/* maybe truncate regular file. this has no effect on dirs */
	if (flags & O_TRUNC)
		ctx.stat.size = 0;

	if (FUNC3(ctx.stat.mode)) {
		ctx.link = FUNC19(ctx.lowerpath.dentry, &done);
		if (FUNC1(ctx.link))
			return FUNC2(ctx.link);
	}

	err = FUNC8(dentry, flags);
	/* err < 0: interrupted, err > 0: raced with another copy-up */
	if (FUNC18(err)) {
		if (err > 0)
			err = 0;
	} else {
		if (!FUNC11(dentry))
			err = FUNC12(&ctx);
		if (!err && parent && !FUNC9(dentry))
			err = FUNC13(&ctx);
		if (!err && FUNC10(dentry, flags))
			err = FUNC7(&ctx);
		FUNC6(dentry);
	}
	FUNC5(&done);

	return err;
}