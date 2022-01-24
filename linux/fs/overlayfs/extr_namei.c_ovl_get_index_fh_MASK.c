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
struct qstr {int /*<<< orphan*/  name; int /*<<< orphan*/  len; } ;
struct ovl_fs {int /*<<< orphan*/  indexdir; } ;
struct ovl_fh {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  ENOENT ; 
 struct dentry* FUNC0 (int) ; 
 int ESTALE ; 
 scalar_t__ FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 scalar_t__ FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct dentry* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct dentry*) ; 
 int FUNC8 (struct ovl_fh*,struct qstr*) ; 
 scalar_t__ FUNC9 (struct dentry*) ; 

struct dentry *FUNC10(struct ovl_fs *ofs, struct ovl_fh *fh)
{
	struct dentry *index;
	struct qstr name;
	int err;

	err = FUNC8(fh, &name);
	if (err)
		return FUNC0(err);

	index = FUNC6(name.name, ofs->indexdir, name.len);
	FUNC5(name.name);
	if (FUNC1(index)) {
		if (FUNC2(index) == -ENOENT)
			index = NULL;
		return index;
	}

	if (FUNC3(index))
		err = 0;
	else if (FUNC9(index))
		err = -ESTALE;
	else if (FUNC7(index))
		err = -EIO;
	else
		return index;

	FUNC4(index);
	return FUNC0(err);
}