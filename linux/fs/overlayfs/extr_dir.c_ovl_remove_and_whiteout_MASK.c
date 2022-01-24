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
struct list_head {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct dentry {struct dentry* d_parent; TYPE_1__ d_name; } ;

/* Variables and functions */
 int EROFS ; 
 int ESTALE ; 
 scalar_t__ FUNC0 (struct dentry*) ; 
 int FUNC1 (struct dentry*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (struct list_head*) ; 
 struct dentry* FUNC7 (int /*<<< orphan*/ ,struct dentry*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct dentry*,int /*<<< orphan*/ ,struct dentry*) ; 
 struct dentry* FUNC9 (struct dentry*,struct list_head*) ; 
 struct dentry* FUNC10 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC11 (struct dentry*,int) ; 
 int FUNC12 (struct dentry*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC13 (struct dentry*,struct dentry*) ; 
 struct dentry* FUNC14 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC15 (struct dentry*,struct dentry*) ; 

__attribute__((used)) static int FUNC16(struct dentry *dentry,
				   struct list_head *list)
{
	struct dentry *workdir = FUNC14(dentry);
	struct dentry *upperdir = FUNC10(dentry->d_parent);
	struct dentry *upper;
	struct dentry *opaquedir = NULL;
	int err;

	if (FUNC2(!workdir))
		return -EROFS;

	if (!FUNC6(list)) {
		opaquedir = FUNC9(dentry, list);
		err = FUNC1(opaquedir);
		if (FUNC0(opaquedir))
			goto out;
	}

	err = FUNC12(workdir, upperdir);
	if (err)
		goto out_dput;

	upper = FUNC7(dentry->d_name.name, upperdir,
			       dentry->d_name.len);
	err = FUNC1(upper);
	if (FUNC0(upper))
		goto out_unlock;

	err = -ESTALE;
	if ((opaquedir && upper != opaquedir) ||
	    (!opaquedir && FUNC10(dentry) &&
	     !FUNC13(dentry, upper))) {
		goto out_dput_upper;
	}

	err = FUNC8(workdir, FUNC4(upperdir), upper);
	if (err)
		goto out_d_drop;

	FUNC11(dentry->d_parent, true);
out_d_drop:
	FUNC3(dentry);
out_dput_upper:
	FUNC5(upper);
out_unlock:
	FUNC15(workdir, upperdir);
out_dput:
	FUNC5(opaquedir);
out:
	return err;
}