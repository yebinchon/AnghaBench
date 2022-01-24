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
struct inode {int /*<<< orphan*/  i_private; } ;
struct TYPE_2__ {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct dentry {struct inode* d_inode; TYPE_1__ d_name; } ;
struct aa_ns {int /*<<< orphan*/  lock; int /*<<< orphan*/  sub_ns; int /*<<< orphan*/  level; } ;
struct aa_label {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  AA_MAY_LOAD_POLICY ; 
 int ENOENT ; 
 int /*<<< orphan*/  I_MUTEX_PARENT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct aa_ns*) ; 
 struct aa_ns* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct aa_label*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct aa_ns*) ; 
 struct aa_label* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct aa_label*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 struct dentry* FUNC13 (struct aa_ns*) ; 

__attribute__((used)) static int FUNC14(struct inode *dir, struct dentry *dentry)
{
	struct aa_ns *ns, *parent;
	/* TODO: improve permission check */
	struct aa_label *label;
	int error;

	label = FUNC6();
	error = FUNC4(label, NULL, AA_MAY_LOAD_POLICY);
	FUNC7(label);
	if (error)
		return error;

	parent = FUNC3(dir->i_private);
	/* rmdir calls the generic securityfs functions to remove files
	 * from the apparmor dir. It is up to the apparmor ns locking
	 * to avoid races.
	 */
	FUNC10(dir);
	FUNC10(dentry->d_inode);

	FUNC11(&parent->lock, parent->level);
	ns = FUNC3(FUNC1(&parent->sub_ns, dentry->d_name.name,
				     dentry->d_name.len));
	if (!ns) {
		error = -ENOENT;
		goto out;
	}
	FUNC0(FUNC13(ns) != dentry);

	FUNC2(ns);
	FUNC5(ns);

out:
	FUNC12(&parent->lock);
	FUNC9(dir, I_MUTEX_PARENT);
	FUNC8(dentry->d_inode);
	FUNC5(parent);

	return error;
}