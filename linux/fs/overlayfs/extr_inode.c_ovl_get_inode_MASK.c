#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct ovl_path {TYPE_1__* layer; struct dentry* dentry; } ;
struct ovl_inode_params {int numlower; int /*<<< orphan*/  redirect; int /*<<< orphan*/  index; int /*<<< orphan*/  lowerdata; scalar_t__ newinode; struct ovl_path* lowerpath; struct dentry* upperdentry; } ;
struct inode {int i_nlink; int i_state; unsigned long i_ino; int /*<<< orphan*/  i_rdev; int /*<<< orphan*/  i_mode; } ;
struct dentry {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  redirect; } ;
struct TYPE_3__ {int fsid; } ;

/* Variables and functions */
 int EEXIST ; 
 int ENOMEM ; 
 struct inode* FUNC0 (int) ; 
 int ESTALE ; 
 int I_NEW ; 
 int /*<<< orphan*/  OVL_CONST_INO ; 
 TYPE_2__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  OVL_IMPURE ; 
 int /*<<< orphan*/  OVL_INDEX ; 
 int /*<<< orphan*/  OVL_UPPERDATA ; 
 int /*<<< orphan*/  OVL_WHITEOUTS ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC7 (struct super_block*) ; 
 int FUNC8 (struct dentry*) ; 
 scalar_t__ FUNC9 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,int) ; 
 unsigned int FUNC11 (struct dentry*,struct dentry*,unsigned int) ; 
 int FUNC12 (struct super_block*,struct dentry*,struct dentry*,int /*<<< orphan*/ ) ; 
 struct inode* FUNC13 (struct super_block*,scalar_t__,struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*,struct dentry*,struct dentry*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,struct inode*) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*,struct dentry*,struct dentry*,int) ; 
 int /*<<< orphan*/  FUNC18 (char*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct inode*,unsigned int) ; 
 int /*<<< orphan*/  FUNC20 (struct inode*) ; 

struct inode *FUNC21(struct super_block *sb,
			    struct ovl_inode_params *oip)
{
	struct dentry *upperdentry = oip->upperdentry;
	struct ovl_path *lowerpath = oip->lowerpath;
	struct inode *realinode = upperdentry ? FUNC3(upperdentry) : NULL;
	struct inode *inode;
	struct dentry *lowerdentry = lowerpath ? lowerpath->dentry : NULL;
	bool bylower = FUNC12(sb, upperdentry, lowerdentry,
					oip->index);
	int fsid = bylower ? oip->lowerpath->layer->fsid : 0;
	bool is_dir, metacopy = false;
	unsigned long ino = 0;
	int err = oip->newinode ? -EEXIST : -ENOMEM;

	if (!realinode)
		realinode = FUNC3(lowerdentry);

	/*
	 * Copy up origin (lower) may exist for non-indexed upper, but we must
	 * not use lower as hash key if this is a broken hardlink.
	 */
	is_dir = FUNC2(realinode->i_mode);
	if (upperdentry || bylower) {
		struct inode *key = FUNC3(bylower ? lowerdentry :
						      upperdentry);
		unsigned int nlink = is_dir ? 1 : realinode->i_nlink;

		inode = FUNC13(sb, oip->newinode, key);
		if (!inode)
			goto out_err;
		if (!(inode->i_state & I_NEW)) {
			/*
			 * Verify that the underlying files stored in the inode
			 * match those in the dentry.
			 */
			if (!FUNC17(inode, lowerdentry, upperdentry,
					      true)) {
				FUNC5(inode);
				err = -ESTALE;
				goto out_err;
			}

			FUNC4(upperdentry);
			FUNC6(oip->redirect);
			goto out;
		}

		/* Recalculate nlink for non-dir due to indexing */
		if (!is_dir)
			nlink = FUNC11(lowerdentry, upperdentry, nlink);
		FUNC19(inode, nlink);
		ino = key->i_ino;
	} else {
		/* Lower hardlink that will be broken on copy up */
		inode = FUNC7(sb);
		if (!inode) {
			err = -ENOMEM;
			goto out_err;
		}
	}
	FUNC10(inode, realinode->i_mode, realinode->i_rdev, ino, fsid);
	FUNC14(inode, upperdentry, lowerdentry, oip->lowerdata);

	if (upperdentry && FUNC15(upperdentry))
		FUNC16(OVL_IMPURE, inode);

	if (oip->index)
		FUNC16(OVL_INDEX, inode);

	if (upperdentry) {
		err = FUNC8(upperdentry);
		if (err < 0)
			goto out_err;
		metacopy = err;
		if (!metacopy)
			FUNC16(OVL_UPPERDATA, inode);
	}

	FUNC1(inode)->redirect = oip->redirect;

	if (bylower)
		FUNC16(OVL_CONST_INO, inode);

	/* Check for non-merge dir that may have whiteouts */
	if (is_dir) {
		if (((upperdentry && lowerdentry) || oip->numlower > 1) ||
		    FUNC9(upperdentry ?: lowerdentry)) {
			FUNC16(OVL_WHITEOUTS, inode);
		}
	}

	if (inode->i_state & I_NEW)
		FUNC20(inode);
out:
	return inode;

out_err:
	FUNC18("overlayfs: failed to get inode (%i)\n", err);
	inode = FUNC0(err);
	goto out;
}