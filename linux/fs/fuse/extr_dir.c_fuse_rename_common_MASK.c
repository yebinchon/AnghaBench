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
struct fuse_rename2_in {unsigned int flags; void* newdir; } ;
struct fuse_conn {int dummy; } ;
struct TYPE_7__ {int len; struct fuse_rename2_in* name; } ;
struct dentry {TYPE_2__ d_name; } ;
struct TYPE_8__ {int opcode; int in_numargs; TYPE_1__* in_args; void* nodeid; } ;
struct TYPE_6__ {size_t size; struct fuse_rename2_in* value; } ;

/* Variables and functions */
 int EINTR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__) ; 
 unsigned int RENAME_EXCHANGE ; 
 TYPE_3__ args ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 scalar_t__ FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*) ; 
 int FUNC7 (struct fuse_conn*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct fuse_conn* FUNC9 (struct inode*) ; 
 void* FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct fuse_rename2_in*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static int FUNC12(struct inode *olddir, struct dentry *oldent,
			      struct inode *newdir, struct dentry *newent,
			      unsigned int flags, int opcode, size_t argsize)
{
	int err;
	struct fuse_rename2_in inarg;
	struct fuse_conn *fc = FUNC9(olddir);
	FUNC0(args);

	FUNC11(&inarg, 0, argsize);
	inarg.newdir = FUNC10(newdir);
	inarg.flags = flags;
	args.opcode = opcode;
	args.nodeid = FUNC10(olddir);
	args.in_numargs = 3;
	args.in_args[0].size = argsize;
	args.in_args[0].value = &inarg;
	args.in_args[1].size = oldent->d_name.len + 1;
	args.in_args[1].value = oldent->d_name.name;
	args.in_args[2].size = newent->d_name.len + 1;
	args.in_args[2].value = newent->d_name.name;
	err = FUNC7(fc, &args);
	if (!err) {
		/* ctime changes */
		FUNC4(FUNC1(oldent));
		FUNC8(FUNC1(oldent));

		if (flags & RENAME_EXCHANGE) {
			FUNC4(FUNC1(newent));
			FUNC8(FUNC1(newent));
		}

		FUNC3(olddir);
		if (olddir != newdir)
			FUNC3(newdir);

		/* newent will end up negative */
		if (!(flags & RENAME_EXCHANGE) && FUNC2(newent)) {
			FUNC4(FUNC1(newent));
			FUNC6(newent);
			FUNC8(FUNC1(newent));
		}
	} else if (err == -EINTR) {
		/* If request was interrupted, DEITY only knows if the
		   rename actually took place.  If the invalidation
		   fails (e.g. some process has CWD under the renamed
		   directory), then there can be inconsistency between
		   the dcache and the real filesystem.  Tough luck. */
		FUNC5(oldent);
		if (FUNC2(newent))
			FUNC5(newent);
	}

	return err;
}