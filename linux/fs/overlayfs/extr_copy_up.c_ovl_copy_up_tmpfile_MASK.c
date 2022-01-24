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
struct ovl_cu_creds {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct TYPE_3__ {int /*<<< orphan*/  mode; } ;
struct ovl_copy_up_ctx {int /*<<< orphan*/  dentry; int /*<<< orphan*/  metacopy; TYPE_2__ destname; int /*<<< orphan*/  destdir; TYPE_1__ stat; int /*<<< orphan*/  workdir; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  I_MUTEX_PARENT ; 
 int FUNC1 (struct dentry*) ; 
 struct inode* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 struct dentry* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct ovl_copy_up_ctx*,struct dentry*) ; 
 int FUNC8 (struct dentry*,struct inode*,struct dentry*) ; 
 struct dentry* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,struct dentry*) ; 
 int FUNC11 (int /*<<< orphan*/ ,struct ovl_cu_creds*) ; 
 int /*<<< orphan*/  FUNC12 (struct ovl_cu_creds*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 

__attribute__((used)) static int FUNC14(struct ovl_copy_up_ctx *c)
{
	struct inode *udir = FUNC2(c->destdir);
	struct dentry *temp, *upper;
	struct ovl_cu_creds cc;
	int err;

	err = FUNC11(c->dentry, &cc);
	if (err)
		return err;

	temp = FUNC9(c->workdir, c->stat.mode);
	FUNC12(&cc);

	if (FUNC0(temp))
		return FUNC1(temp);

	err = FUNC7(c, temp);
	if (err)
		goto out_dput;

	FUNC4(udir, I_MUTEX_PARENT);

	upper = FUNC6(c->destname.name, c->destdir, c->destname.len);
	err = FUNC1(upper);
	if (!FUNC0(upper)) {
		err = FUNC8(temp, udir, upper);
		FUNC3(upper);
	}
	FUNC5(udir);

	if (err)
		goto out_dput;

	if (!c->metacopy)
		FUNC13(FUNC2(c->dentry));
	FUNC10(FUNC2(c->dentry), temp);

	return 0;

out_dput:
	FUNC3(temp);
	return err;
}