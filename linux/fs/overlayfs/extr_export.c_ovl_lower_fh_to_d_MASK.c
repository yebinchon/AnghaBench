#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct super_block {struct ovl_fs* s_fs_info; } ;
struct ovl_path {struct inode* dentry; } ;
struct ovl_fs {scalar_t__ indexdir; } ;
struct ovl_fh {int dummy; } ;
struct inode {int d_flags; } ;
struct dentry {int d_flags; } ;

/* Variables and functions */
 int DCACHE_DISCONNECTED ; 
 struct inode* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 int FUNC3 (struct inode*) ; 
 struct inode* FUNC4 (struct inode*) ; 
 scalar_t__ FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int FUNC8 (struct ovl_fs*,struct ovl_fh*,int,int /*<<< orphan*/ *,struct ovl_path**) ; 
 struct inode* FUNC9 (struct super_block*,struct inode*,struct ovl_path*,struct inode*) ; 
 struct inode* FUNC10 (struct ovl_fs*,struct ovl_fh*) ; 
 struct inode* FUNC11 (struct ovl_fs*,struct inode*) ; 
 struct inode* FUNC12 (struct super_block*,struct inode*,int) ; 
 int FUNC13 (struct inode*,struct inode*,int) ; 

__attribute__((used)) static struct dentry *FUNC14(struct super_block *sb,
					struct ovl_fh *fh)
{
	struct ovl_fs *ofs = sb->s_fs_info;
	struct ovl_path origin = { };
	struct ovl_path *stack = &origin;
	struct dentry *dentry = NULL;
	struct dentry *index = NULL;
	struct inode *inode;
	int err;

	/* First lookup overlay inode in inode cache by origin fh */
	err = FUNC8(ofs, fh, false, NULL, &stack);
	if (err)
		return FUNC0(err);

	if (!FUNC5(origin.dentry) ||
	    !(origin.dentry->d_flags & DCACHE_DISCONNECTED)) {
		inode = FUNC12(sb, origin.dentry, false);
		err = FUNC3(inode);
		if (FUNC1(inode))
			goto out_err;
		if (inode) {
			dentry = FUNC4(inode);
			FUNC7(inode);
			if (dentry)
				goto out;
		}
	}

	/* Then lookup indexed upper/whiteout by origin fh */
	if (ofs->indexdir) {
		index = FUNC10(ofs, fh);
		err = FUNC3(index);
		if (FUNC1(index)) {
			index = NULL;
			goto out_err;
		}
	}

	/* Then try to get a connected upper dir by index */
	if (index && FUNC5(index)) {
		struct dentry *upper = FUNC11(ofs, index);

		err = FUNC3(upper);
		if (FUNC2(upper))
			goto out_err;

		dentry = FUNC9(sb, upper, NULL, NULL);
		FUNC6(upper);
		goto out;
	}

	/* Find origin.dentry again with ovl_acceptable() layer check */
	if (FUNC5(origin.dentry)) {
		FUNC6(origin.dentry);
		origin.dentry = NULL;
		err = FUNC8(ofs, fh, true, NULL, &stack);
		if (err)
			goto out_err;
	}
	if (index) {
		err = FUNC13(index, origin.dentry, false);
		if (err)
			goto out_err;
	}

	/* Get a connected non-upper dir or disconnected non-dir */
	dentry = FUNC9(sb, NULL, &origin, index);

out:
	FUNC6(origin.dentry);
	FUNC6(index);
	return dentry;

out_err:
	dentry = FUNC0(err);
	goto out;
}