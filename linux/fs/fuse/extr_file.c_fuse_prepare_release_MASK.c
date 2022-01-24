#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct fuse_release_in {int dummy; } ;
struct TYPE_6__ {int in_numargs; int opcode; int force; int nocreds; int /*<<< orphan*/  nodeid; TYPE_1__* in_args; } ;
struct TYPE_5__ {int flags; int /*<<< orphan*/  fh; } ;
struct fuse_release_args {TYPE_3__ args; TYPE_2__ inarg; } ;
struct fuse_inode {int /*<<< orphan*/  lock; } ;
struct fuse_file {int /*<<< orphan*/  nodeid; int /*<<< orphan*/  fh; int /*<<< orphan*/  poll_wait; int /*<<< orphan*/  polled_node; int /*<<< orphan*/  write_entry; struct fuse_release_args* release_args; struct fuse_conn* fc; } ;
struct fuse_conn {int /*<<< orphan*/  lock; int /*<<< orphan*/  polled_files; } ;
struct TYPE_4__ {int size; TYPE_2__* value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct fuse_inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct fuse_inode *fi, struct fuse_file *ff,
				 int flags, int opcode)
{
	struct fuse_conn *fc = ff->fc;
	struct fuse_release_args *ra = ff->release_args;

	/* Inode is NULL on error path of fuse_create_open() */
	if (FUNC1(fi)) {
		FUNC4(&fi->lock);
		FUNC2(&ff->write_entry);
		FUNC5(&fi->lock);
	}
	FUNC4(&fc->lock);
	if (!FUNC0(&ff->polled_node))
		FUNC3(&ff->polled_node, &fc->polled_files);
	FUNC5(&fc->lock);

	FUNC6(&ff->poll_wait);

	ra->inarg.fh = ff->fh;
	ra->inarg.flags = flags;
	ra->args.in_numargs = 1;
	ra->args.in_args[0].size = sizeof(struct fuse_release_in);
	ra->args.in_args[0].value = &ra->inarg;
	ra->args.opcode = opcode;
	ra->args.nodeid = ff->nodeid;
	ra->args.force = true;
	ra->args.nocreds = true;
}