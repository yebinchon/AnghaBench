#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct ovl_copy_up_ctx {TYPE_2__* dentry; int /*<<< orphan*/  pstat; TYPE_2__* parent; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct TYPE_8__ {TYPE_1__ d_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  I_MUTEX_PARENT ; 
 int FUNC1 (struct dentry*) ; 
 struct inode* FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 struct dentry* FUNC6 (int /*<<< orphan*/ ,struct dentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 struct dentry* FUNC8 (TYPE_2__*) ; 
 int FUNC9 (struct dentry*,struct inode*,struct dentry*) ; 
 int FUNC10 (TYPE_2__*,struct dentry*) ; 
 int FUNC11 (TYPE_2__*) ; 
 int FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (struct dentry*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct ovl_copy_up_ctx *c)
{
	int err;
	struct dentry *upper;
	struct dentry *upperdir = FUNC8(c->parent);
	struct inode *udir = FUNC2(upperdir);

	/* Mark parent "impure" because it may now contain non-pure upper */
	err = FUNC10(c->parent, upperdir);
	if (err)
		return err;

	err = FUNC11(c->dentry);
	if (err)
		return err;

	FUNC4(udir, I_MUTEX_PARENT);
	upper = FUNC6(c->dentry->d_name.name, upperdir,
			       c->dentry->d_name.len);
	err = FUNC1(upper);
	if (!FUNC0(upper)) {
		err = FUNC9(FUNC8(c->dentry), udir, upper);
		FUNC3(upper);

		if (!err) {
			/* Restore timestamps on parent (best effort) */
			FUNC13(upperdir, &c->pstat);
			FUNC7(c->dentry);
		}
	}
	FUNC5(udir);
	if (err)
		return err;

	err = FUNC12(c->dentry);

	return err;
}