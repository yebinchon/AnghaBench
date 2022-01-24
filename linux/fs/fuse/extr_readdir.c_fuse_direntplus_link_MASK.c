#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct qstr {char* name; int len; int /*<<< orphan*/  hash; } ;
struct inode {int i_mode; int /*<<< orphan*/  i_sb; } ;
struct fuse_inode {int /*<<< orphan*/  state; int /*<<< orphan*/  lock; int /*<<< orphan*/  nlookup; } ;
struct TYPE_5__ {int mode; } ;
struct fuse_entry_out {scalar_t__ nodeid; TYPE_2__ attr; int /*<<< orphan*/  generation; } ;
struct fuse_dirent {int /*<<< orphan*/  namelen; int /*<<< orphan*/  name; } ;
struct fuse_direntplus {struct fuse_dirent dirent; struct fuse_entry_out entry_out; } ;
struct fuse_conn {scalar_t__ readdirplus_auto; } ;
struct TYPE_4__ {struct dentry* dentry; } ;
struct file {TYPE_1__ f_path; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EIO ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct inode* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUSE_I_INIT_RDPLUS ; 
 scalar_t__ FUNC2 (struct dentry*) ; 
 int FUNC3 (struct dentry*) ; 
 struct qstr FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int S_IFMT ; 
 struct dentry* FUNC5 (struct dentry*,struct qstr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*) ; 
 struct inode* FUNC7 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC8 (struct dentry*) ; 
 struct dentry* FUNC9 (struct dentry*,struct qstr*) ; 
 int /*<<< orphan*/  FUNC10 (struct dentry*) ; 
 struct dentry* FUNC11 (struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC12 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC13 (struct fuse_entry_out*) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (struct dentry*,char*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct dentry*,struct fuse_entry_out*) ; 
 struct inode* FUNC18 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 struct fuse_conn* FUNC20 (struct inode*) ; 
 struct fuse_inode* FUNC21 (struct inode*) ; 
 scalar_t__ FUNC22 (struct inode*) ; 
 scalar_t__ FUNC23 (scalar_t__) ; 
 scalar_t__ FUNC24 (struct inode*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wq ; 

__attribute__((used)) static int FUNC28(struct file *file,
				struct fuse_direntplus *direntplus,
				u64 attr_version)
{
	struct fuse_entry_out *o = &direntplus->entry_out;
	struct fuse_dirent *dirent = &direntplus->dirent;
	struct dentry *parent = file->f_path.dentry;
	struct qstr name = FUNC4(dirent->name, dirent->namelen);
	struct dentry *dentry;
	struct dentry *alias;
	struct inode *dir = FUNC7(parent);
	struct fuse_conn *fc;
	struct inode *inode;
	FUNC0(wq);

	if (!o->nodeid) {
		/*
		 * Unlike in the case of fuse_lookup, zero nodeid does not mean
		 * ENOENT. Instead, it only means the userspace filesystem did
		 * not want to return attributes/handle for this entry.
		 *
		 * So do nothing.
		 */
		return 0;
	}

	if (name.name[0] == '.') {
		/*
		 * We could potentially refresh the attributes of the directory
		 * and its parent?
		 */
		if (name.len == 1)
			return 0;
		if (name.name[1] == '.' && name.len == 2)
			return 0;
	}

	if (FUNC23(o->nodeid))
		return -EIO;
	if (!FUNC19(o->attr.mode))
		return -EIO;

	fc = FUNC20(dir);

	name.hash = FUNC15(parent, name.name, name.len);
	dentry = FUNC9(parent, &name);
	if (!dentry) {
retry:
		dentry = FUNC5(parent, &name, &wq);
		if (FUNC2(dentry))
			return FUNC3(dentry);
	}
	if (!FUNC6(dentry)) {
		struct fuse_inode *fi;
		inode = FUNC7(dentry);
		if (!inode ||
		    FUNC22(inode) != o->nodeid ||
		    ((o->attr.mode ^ inode->i_mode) & S_IFMT)) {
			FUNC8(dentry);
			FUNC12(dentry);
			goto retry;
		}
		if (FUNC24(inode)) {
			FUNC12(dentry);
			return -EIO;
		}

		fi = FUNC21(inode);
		FUNC26(&fi->lock);
		fi->nlookup++;
		FUNC27(&fi->lock);

		FUNC14(inode);
		FUNC16(inode, &o->attr,
				       FUNC13(o),
				       attr_version);
		/*
		 * The other branch comes via fuse_iget()
		 * which bumps nlookup inside
		 */
	} else {
		inode = FUNC18(dir->i_sb, o->nodeid, o->generation,
				  &o->attr, FUNC13(o),
				  attr_version);
		if (!inode)
			inode = FUNC1(-ENOMEM);

		alias = FUNC11(inode, dentry);
		FUNC10(dentry);
		if (alias) {
			FUNC12(dentry);
			dentry = alias;
		}
		if (FUNC2(dentry))
			return FUNC3(dentry);
	}
	if (fc->readdirplus_auto)
		FUNC25(FUSE_I_INIT_RDPLUS, &FUNC21(inode)->state);
	FUNC17(dentry, o);

	FUNC12(dentry);
	return 0;
}