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
struct path {struct dentry* dentry; } ;
struct TYPE_5__ {int /*<<< orphan*/  size; int /*<<< orphan*/  mode; } ;
struct TYPE_4__ {int /*<<< orphan*/  dentry; } ;
struct ovl_copy_up_ctx {TYPE_2__ stat; scalar_t__ metacopy; int /*<<< orphan*/  dentry; TYPE_1__ lowerpath; scalar_t__ origin; } ;
struct dentry {int /*<<< orphan*/  d_inode; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  EOPNOTSUPP ; 
 int /*<<< orphan*/  OVL_XATTR_METACOPY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct dentry*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct path*,struct path*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct path*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct path*) ; 
 int FUNC9 (struct dentry*,TYPE_2__*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dentry*) ; 
 int FUNC11 (struct dentry*,TYPE_2__*) ; 

__attribute__((used)) static int FUNC12(struct ovl_copy_up_ctx *c, struct dentry *temp)
{
	int err;

	/*
	 * Copy up data first and then xattrs. Writing data after
	 * xattrs will remove security.capability xattr automatically.
	 */
	if (FUNC0(c->stat.mode) && !c->metacopy) {
		struct path upperpath, datapath;

		FUNC8(c->dentry, &upperpath);
		if (FUNC1(upperpath.dentry != NULL))
			return -EIO;
		upperpath.dentry = temp;

		FUNC7(c->dentry, &datapath);
		err = FUNC5(&datapath, &upperpath, c->stat.size);
		if (err)
			return err;
	}

	err = FUNC6(c->lowerpath.dentry, temp);
	if (err)
		return err;

	/*
	 * Store identifier of lower inode in upper inode xattr to
	 * allow lookup of the copy up origin inode.
	 *
	 * Don't set origin when we are breaking the association with a lower
	 * hard link.
	 */
	if (c->origin) {
		err = FUNC10(c->dentry, c->lowerpath.dentry, temp);
		if (err)
			return err;
	}

	if (c->metacopy) {
		err = FUNC4(c->dentry, temp, OVL_XATTR_METACOPY,
					 NULL, 0, -EOPNOTSUPP);
		if (err)
			return err;
	}

	FUNC2(temp->d_inode);
	if (c->metacopy)
		err = FUNC11(temp, &c->stat);
	if (!err)
		err = FUNC9(temp, &c->stat);
	FUNC3(temp->d_inode);

	return err;
}