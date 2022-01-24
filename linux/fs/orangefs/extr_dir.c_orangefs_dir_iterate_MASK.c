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
struct orangefs_inode_s {int dummy; } ;
struct orangefs_dir {int error; scalar_t__ token; scalar_t__ end; } ;
struct TYPE_2__ {struct dentry* dentry; } ;
struct file {struct orangefs_dir* private_data; TYPE_1__ f_path; } ;
struct dir_context {scalar_t__ pos; } ;
struct dentry {int /*<<< orphan*/  d_inode; } ;

/* Variables and functions */
 int EIO ; 
 struct orangefs_inode_s* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ORANGEFS_ITERATE_END ; 
 int PART_MASK ; 
 int PART_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (struct file*,struct dir_context*) ; 
 int /*<<< orphan*/  FUNC2 (struct file*,struct dir_context*) ; 
 int FUNC3 (struct orangefs_inode_s*,struct orangefs_dir*,struct dentry*,struct dir_context*) ; 
 int FUNC4 (struct orangefs_inode_s*,struct orangefs_dir*,struct dentry*) ; 

__attribute__((used)) static int FUNC5(struct file *file,
    struct dir_context *ctx)
{
	struct orangefs_inode_s *oi;
	struct orangefs_dir *od;
	struct dentry *dentry;
	int r;

	dentry = file->f_path.dentry;
	oi = FUNC0(dentry->d_inode);
	od = file->private_data;

	if (od->error)
		return od->error;

	if (ctx->pos == 0) {
		if (!FUNC1(file, ctx))
			return 0;
		ctx->pos++;
	}
	if (ctx->pos == 1) {
		if (!FUNC2(file, ctx))
			return 0;
		ctx->pos = 1 << PART_SHIFT;
	}

	/*
	 * The seek position is in the first synthesized part but is not
	 * valid.
	 */
	if ((ctx->pos & PART_MASK) == 0)
		return -EIO;

	r = 0;

	/*
	 * Must read more if the user has sought past what has been read
	 * so far.  Stop a user who has sought past the end.
	 */
	while (od->token != ORANGEFS_ITERATE_END &&
	    ctx->pos > od->end) {
		r = FUNC4(oi, od, dentry);
		if (r)
			return r;
	}
	if (od->token == ORANGEFS_ITERATE_END && ctx->pos > od->end)
		return -EIO;

	/* Then try to fill if there's any left in the buffer. */
	if (ctx->pos < od->end) {
		r = FUNC3(oi, od, dentry, ctx);
		if (r)
			return r;
	}

	/* Finally get some more and try to fill. */
	if (od->token != ORANGEFS_ITERATE_END) {
		r = FUNC4(oi, od, dentry);
		if (r)
			return r;
		r = FUNC3(oi, od, dentry, ctx);
	}

	return r;
}