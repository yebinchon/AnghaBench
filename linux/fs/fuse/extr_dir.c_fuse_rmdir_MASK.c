#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct fuse_conn {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  name; scalar_t__ len; } ;
struct dentry {TYPE_2__ d_name; } ;
struct TYPE_8__ {int in_numargs; TYPE_1__* in_args; int /*<<< orphan*/  nodeid; int /*<<< orphan*/  opcode; } ;
struct TYPE_6__ {int /*<<< orphan*/  value; scalar_t__ size; } ;

/* Variables and functions */
 int EINTR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__) ; 
 int /*<<< orphan*/  FUSE_RMDIR ; 
 TYPE_3__ args ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*) ; 
 int FUNC6 (struct fuse_conn*,TYPE_3__*) ; 
 struct fuse_conn* FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 

__attribute__((used)) static int FUNC9(struct inode *dir, struct dentry *entry)
{
	int err;
	struct fuse_conn *fc = FUNC7(dir);
	FUNC0(args);

	args.opcode = FUSE_RMDIR;
	args.nodeid = FUNC8(dir);
	args.in_numargs = 1;
	args.in_args[0].size = entry->d_name.len + 1;
	args.in_args[0].value = entry->d_name.name;
	err = FUNC6(fc, &args);
	if (!err) {
		FUNC1(FUNC2(entry));
		FUNC3(dir);
		FUNC5(entry);
	} else if (err == -EINTR)
		FUNC4(entry);
	return err;
}