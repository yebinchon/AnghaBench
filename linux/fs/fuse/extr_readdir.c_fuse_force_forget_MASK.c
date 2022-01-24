#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct inode {int dummy; } ;
struct fuse_forget_in {int nlookup; } ;
struct fuse_conn {int dummy; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  inarg ;
struct TYPE_6__ {int in_numargs; int force; int noreply; TYPE_1__* in_args; int /*<<< orphan*/  nodeid; int /*<<< orphan*/  opcode; } ;
struct TYPE_5__ {int size; struct fuse_forget_in* value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__) ; 
 int /*<<< orphan*/  FUSE_FORGET ; 
 TYPE_2__ args ; 
 struct inode* FUNC1 (struct file*) ; 
 int /*<<< orphan*/  FUNC2 (struct fuse_conn*,TYPE_2__*) ; 
 struct fuse_conn* FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct fuse_forget_in*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct file *file, u64 nodeid)
{
	struct inode *inode = FUNC1(file);
	struct fuse_conn *fc = FUNC3(inode);
	struct fuse_forget_in inarg;
	FUNC0(args);

	FUNC4(&inarg, 0, sizeof(inarg));
	inarg.nlookup = 1;
	args.opcode = FUSE_FORGET;
	args.nodeid = nodeid;
	args.in_numargs = 1;
	args.in_args[0].size = sizeof(inarg);
	args.in_args[0].value = &inarg;
	args.force = true;
	args.noreply = true;

	FUNC2(fc, &args);
	/* ignore errors */
}