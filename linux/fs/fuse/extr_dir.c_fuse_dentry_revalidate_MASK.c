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
struct inode {int i_mode; } ;
struct fuse_inode {int /*<<< orphan*/  state; int /*<<< orphan*/  lock; int /*<<< orphan*/  nlookup; } ;
struct fuse_forget_link {int dummy; } ;
struct TYPE_2__ {int mode; } ;
struct fuse_entry_out {scalar_t__ nodeid; TYPE_1__ attr; } ;
struct fuse_conn {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_name; } ;

/* Variables and functions */
 int ECHILD ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUSE_I_INIT_RDPLUS ; 
 unsigned int LOOKUP_RCU ; 
 unsigned int LOOKUP_REVAL ; 
 int S_IFMT ; 
 int /*<<< orphan*/  args ; 
 struct inode* FUNC1 (struct dentry*) ; 
 struct inode* FUNC2 (struct dentry*) ; 
 struct dentry* FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct fuse_entry_out*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 struct fuse_forget_link* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct dentry*,struct fuse_entry_out*) ; 
 int /*<<< orphan*/  FUNC11 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC12 (struct fuse_conn*) ; 
 int /*<<< orphan*/  FUNC13 (struct fuse_conn*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,struct fuse_entry_out*) ; 
 int /*<<< orphan*/  FUNC14 (struct fuse_conn*,struct fuse_forget_link*,scalar_t__,int) ; 
 int FUNC15 (struct fuse_conn*,int /*<<< orphan*/ *) ; 
 struct fuse_conn* FUNC16 (struct inode*) ; 
 struct fuse_inode* FUNC17 (struct inode*) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 scalar_t__ FUNC19 (struct inode*) ; 
 scalar_t__ FUNC20 (struct inode*) ; 
 int /*<<< orphan*/  FUNC21 (struct fuse_forget_link*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC27(struct dentry *entry, unsigned int flags)
{
	struct inode *inode;
	struct dentry *parent;
	struct fuse_conn *fc;
	struct fuse_inode *fi;
	int ret;

	inode = FUNC2(entry);
	if (inode && FUNC20(inode))
		goto invalid;
	else if (FUNC26(FUNC11(entry), FUNC18()) ||
		 (flags & LOOKUP_REVAL)) {
		struct fuse_entry_out outarg;
		FUNC0(args);
		struct fuse_forget_link *forget;
		u64 attr_version;

		/* For negative dentries, always do a fresh lookup */
		if (!inode)
			goto invalid;

		ret = -ECHILD;
		if (flags & LOOKUP_RCU)
			goto out;

		fc = FUNC16(inode);

		forget = FUNC8();
		ret = -ENOMEM;
		if (!forget)
			goto out;

		attr_version = FUNC12(fc);

		parent = FUNC3(entry);
		FUNC13(fc, &args, FUNC19(FUNC1(parent)),
				 &entry->d_name, &outarg);
		ret = FUNC15(fc, &args);
		FUNC4(parent);
		/* Zero nodeid is same as -ENOENT */
		if (!ret && !outarg.nodeid)
			ret = -ENOENT;
		if (!ret) {
			fi = FUNC17(inode);
			if (outarg.nodeid != FUNC19(inode)) {
				FUNC14(fc, forget, outarg.nodeid, 1);
				goto invalid;
			}
			FUNC22(&fi->lock);
			fi->nlookup++;
			FUNC23(&fi->lock);
		}
		FUNC21(forget);
		if (ret == -ENOMEM)
			goto out;
		if (ret || (outarg.attr.mode ^ inode->i_mode) & S_IFMT)
			goto invalid;

		FUNC6(inode);
		FUNC9(inode, &outarg.attr,
				       FUNC5(&outarg),
				       attr_version);
		FUNC10(entry, &outarg);
	} else if (inode) {
		fi = FUNC17(inode);
		if (flags & LOOKUP_RCU) {
			if (FUNC25(FUSE_I_INIT_RDPLUS, &fi->state))
				return -ECHILD;
		} else if (FUNC24(FUSE_I_INIT_RDPLUS, &fi->state)) {
			parent = FUNC3(entry);
			FUNC7(FUNC1(parent));
			FUNC4(parent);
		}
	}
	ret = 1;
out:
	return ret;

invalid:
	ret = 0;
	goto out;
}