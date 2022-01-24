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
typedef  int umode_t ;
struct inode {int /*<<< orphan*/  i_private; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct dentry {TYPE_1__ d_name; } ;
struct aa_ns {int /*<<< orphan*/  lock; int /*<<< orphan*/  level; } ;
struct aa_label {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  AA_MAY_LOAD_POLICY ; 
 scalar_t__ FUNC1 (struct aa_ns*) ; 
 int /*<<< orphan*/  I_MUTEX_PARENT ; 
 int FUNC2 (struct aa_ns*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int S_IFDIR ; 
 struct aa_ns* FUNC4 (struct aa_ns*,int /*<<< orphan*/ ,struct dentry*) ; 
 int FUNC5 (struct inode*,struct dentry*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct aa_ns* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct aa_label*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct aa_ns*) ; 
 int /*<<< orphan*/  aafs_count ; 
 int /*<<< orphan*/  aafs_mnt ; 
 int /*<<< orphan*/  aafs_ops ; 
 struct aa_label* FUNC9 () ; 
 struct inode* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct aa_label*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct aa_ns*) ; 
 int FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC19(struct inode *dir, struct dentry *dentry, umode_t mode)
{
	struct aa_ns *ns, *parent;
	/* TODO: improve permission check */
	struct aa_label *label;
	int error;

	label = FUNC9();
	error = FUNC7(label, NULL, AA_MAY_LOAD_POLICY);
	FUNC11(label);
	if (error)
		return error;

	parent = FUNC6(dir->i_private);
	FUNC0(FUNC10(FUNC16(parent)) != dir);

	/* we have to unlock and then relock to get locking order right
	 * for pin_fs
	 */
	FUNC13(dir);
	error = FUNC17(&aafs_ops, &aafs_mnt, &aafs_count);
	FUNC14(&parent->lock, parent->level);
	FUNC12(dir, I_MUTEX_PARENT);
	if (error)
		goto out;

	error = FUNC5(dir, dentry, mode | S_IFDIR,  NULL,
				     NULL, NULL, NULL);
	if (error)
		goto out_pin;

	ns = FUNC4(parent, FUNC3(dentry->d_name.name),
				    dentry);
	if (FUNC1(ns)) {
		error = FUNC2(ns);
		ns = NULL;
	}

	FUNC8(ns);		/* list ref remains */
out_pin:
	if (error)
		FUNC18(&aafs_mnt, &aafs_count);
out:
	FUNC15(&parent->lock);
	FUNC8(parent);

	return error;
}