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
typedef  int /*<<< orphan*/  u64 ;
struct super_block {int dummy; } ;
struct qstr {scalar_t__ len; } ;
struct inode {int dummy; } ;
struct fuse_forget_link {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mode; } ;
struct fuse_entry_out {int /*<<< orphan*/  nodeid; TYPE_1__ attr; int /*<<< orphan*/  generation; } ;
struct fuse_conn {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int ENAMETOOLONG ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUSE_NAME_MAX ; 
 int /*<<< orphan*/  args ; 
 int /*<<< orphan*/  FUNC1 (struct fuse_entry_out*) ; 
 struct fuse_forget_link* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct fuse_conn*) ; 
 struct inode* FUNC4 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct fuse_conn*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct qstr const*,struct fuse_entry_out*) ; 
 int /*<<< orphan*/  FUNC6 (struct fuse_conn*,struct fuse_forget_link*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct fuse_conn*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct fuse_conn* FUNC9 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC10 (struct fuse_forget_link*) ; 

int FUNC11(struct super_block *sb, u64 nodeid, const struct qstr *name,
		     struct fuse_entry_out *outarg, struct inode **inode)
{
	struct fuse_conn *fc = FUNC9(sb);
	FUNC0(args);
	struct fuse_forget_link *forget;
	u64 attr_version;
	int err;

	*inode = NULL;
	err = -ENAMETOOLONG;
	if (name->len > FUSE_NAME_MAX)
		goto out;


	forget = FUNC2();
	err = -ENOMEM;
	if (!forget)
		goto out;

	attr_version = FUNC3(fc);

	FUNC5(fc, &args, nodeid, name, outarg);
	err = FUNC7(fc, &args);
	/* Zero nodeid is same as -ENOENT, but with valid timeout */
	if (err || !outarg->nodeid)
		goto out_put_forget;

	err = -EIO;
	if (!outarg->nodeid)
		goto out_put_forget;
	if (!FUNC8(outarg->attr.mode))
		goto out_put_forget;

	*inode = FUNC4(sb, outarg->nodeid, outarg->generation,
			   &outarg->attr, FUNC1(outarg),
			   attr_version);
	err = -ENOMEM;
	if (!*inode) {
		FUNC6(fc, forget, outarg->nodeid, 1);
		goto out;
	}
	err = 0;

 out_put_forget:
	FUNC10(forget);
 out:
	return err;
}