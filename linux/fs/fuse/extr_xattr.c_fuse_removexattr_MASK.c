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
struct inode {int dummy; } ;
struct fuse_conn {int no_removexattr; } ;
struct TYPE_6__ {int in_numargs; TYPE_1__* in_args; int /*<<< orphan*/  nodeid; int /*<<< orphan*/  opcode; } ;
struct TYPE_5__ {char const* value; scalar_t__ size; } ;

/* Variables and functions */
 int ENOSYS ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__) ; 
 int /*<<< orphan*/  FUSE_REMOVEXATTR ; 
 TYPE_2__ args ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int FUNC2 (struct fuse_conn*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 struct fuse_conn* FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 scalar_t__ FUNC6 (char const*) ; 

int FUNC7(struct inode *inode, const char *name)
{
	struct fuse_conn *fc = FUNC4(inode);
	FUNC0(args);
	int err;

	if (fc->no_removexattr)
		return -EOPNOTSUPP;

	args.opcode = FUSE_REMOVEXATTR;
	args.nodeid = FUNC5(inode);
	args.in_numargs = 1;
	args.in_args[0].size = FUNC6(name) + 1;
	args.in_args[0].value = name;
	err = FUNC2(fc, &args);
	if (err == -ENOSYS) {
		fc->no_removexattr = 1;
		err = -EOPNOTSUPP;
	}
	if (!err) {
		FUNC1(inode);
		FUNC3(inode);
	}
	return err;
}