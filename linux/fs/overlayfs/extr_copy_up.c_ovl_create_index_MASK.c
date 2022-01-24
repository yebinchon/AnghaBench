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
struct inode {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_sb; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  OVL_INDEX ; 
 int FUNC2 (struct dentry*) ; 
 int S_IFDIR ; 
 scalar_t__ FUNC3 (int) ; 
 struct inode* FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct dentry* FUNC8 (int /*<<< orphan*/ ,struct dentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,struct dentry*) ; 
 struct dentry* FUNC10 (struct dentry*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct inode*,struct dentry*,struct inode*,struct dentry*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct dentry*,struct qstr*) ; 
 struct dentry* FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (struct dentry*,struct dentry*) ; 
 int FUNC15 (int /*<<< orphan*/ ,struct inode*) ; 

__attribute__((used)) static int FUNC16(struct dentry *dentry, struct dentry *origin,
			    struct dentry *upper)
{
	struct dentry *indexdir = FUNC13(dentry->d_sb);
	struct inode *dir = FUNC4(indexdir);
	struct dentry *index = NULL;
	struct dentry *temp = NULL;
	struct qstr name = { };
	int err;

	/*
	 * For now this is only used for creating index entry for directories,
	 * because non-dir are copied up directly to index and then hardlinked
	 * to upper dir.
	 *
	 * TODO: implement create index for non-dir, so we can call it when
	 * encoding file handle for non-dir in case index does not exist.
	 */
	if (FUNC3(!FUNC5(dentry)))
		return -EIO;

	/* Directory not expected to be indexed before copy up */
	if (FUNC3(FUNC15(OVL_INDEX, FUNC4(dentry))))
		return -EIO;

	err = FUNC12(origin, &name);
	if (err)
		return err;

	temp = FUNC10(indexdir, FUNC1(S_IFDIR | 0));
	err = FUNC2(temp);
	if (FUNC0(temp))
		goto free_name;

	err = FUNC14(upper, temp);
	if (err)
		goto out;

	index = FUNC8(name.name, indexdir, name.len);
	if (FUNC0(index)) {
		err = FUNC2(index);
	} else {
		err = FUNC11(dir, temp, dir, index, 0);
		FUNC6(index);
	}
out:
	if (err)
		FUNC9(dir, temp);
	FUNC6(temp);
free_name:
	FUNC7(name.name);
	return err;
}