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
struct ovl_cu_creds {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct TYPE_5__ {int /*<<< orphan*/  dentry; } ;
struct TYPE_4__ {int mode; int /*<<< orphan*/  rdev; } ;
struct ovl_copy_up_ctx {int /*<<< orphan*/  destdir; int /*<<< orphan*/  workdir; int /*<<< orphan*/  dentry; int /*<<< orphan*/  metacopy; TYPE_3__ destname; TYPE_2__ lowerpath; scalar_t__ indexed; TYPE_1__ stat; int /*<<< orphan*/  link; } ;
struct ovl_cattr {int mode; int /*<<< orphan*/  link; int /*<<< orphan*/  rdev; } ;
struct inode {int i_mode; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  OVL_WHITEOUTS ; 
 int FUNC1 (struct dentry*) ; 
 int S_IFMT ; 
 scalar_t__ FUNC2 (int) ; 
 struct inode* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 struct dentry* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,struct dentry*) ; 
 int FUNC7 (struct ovl_copy_up_ctx*,struct dentry*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dentry*) ; 
 struct dentry* FUNC9 (int /*<<< orphan*/ ,struct ovl_cattr*) ; 
 int FUNC10 (struct inode*,struct dentry*,struct inode*,struct dentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,struct dentry*) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ,struct ovl_cu_creds*) ; 
 int /*<<< orphan*/  FUNC14 (struct ovl_cu_creds*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,struct inode*) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC18(struct ovl_copy_up_ctx *c)
{
	struct inode *inode;
	struct inode *udir = FUNC3(c->destdir), *wdir = FUNC3(c->workdir);
	struct dentry *temp, *upper;
	struct ovl_cu_creds cc;
	int err;
	struct ovl_cattr cattr = {
		/* Can't properly set mode on creation because of the umask */
		.mode = c->stat.mode & S_IFMT,
		.rdev = c->stat.rdev,
		.link = c->link
	};

	err = FUNC12(c->workdir, c->destdir);
	if (err)
		return err;

	err = FUNC13(c->dentry, &cc);
	if (err)
		goto unlock;

	temp = FUNC9(c->workdir, &cattr);
	FUNC14(&cc);

	err = FUNC1(temp);
	if (FUNC0(temp))
		goto unlock;

	err = FUNC7(c, temp);
	if (err)
		goto cleanup;

	if (FUNC2(c->stat.mode) && c->indexed) {
		err = FUNC8(c->dentry, c->lowerpath.dentry, temp);
		if (err)
			goto cleanup;
	}

	upper = FUNC5(c->destname.name, c->destdir, c->destname.len);
	err = FUNC1(upper);
	if (FUNC0(upper))
		goto cleanup;

	err = FUNC10(wdir, temp, udir, upper, 0);
	FUNC4(upper);
	if (err)
		goto cleanup;

	if (!c->metacopy)
		FUNC16(FUNC3(c->dentry));
	inode = FUNC3(c->dentry);
	FUNC11(inode, temp);
	if (FUNC2(inode->i_mode))
		FUNC15(OVL_WHITEOUTS, inode);
unlock:
	FUNC17(c->workdir, c->destdir);

	return err;

cleanup:
	FUNC6(wdir, temp);
	FUNC4(temp);
	goto unlock;
}