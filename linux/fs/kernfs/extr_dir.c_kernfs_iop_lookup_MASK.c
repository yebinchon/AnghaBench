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
struct kernfs_node {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; struct kernfs_node* i_private; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
struct dentry {TYPE_1__ d_name; } ;
struct TYPE_4__ {void* ns; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct dentry* FUNC0 (int /*<<< orphan*/ ) ; 
 struct dentry* FUNC1 (struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct kernfs_node*) ; 
 struct kernfs_node* FUNC3 (struct kernfs_node*,int /*<<< orphan*/ ,void const*) ; 
 struct inode* FUNC4 (int /*<<< orphan*/ ,struct kernfs_node*) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kernfs_mutex ; 
 scalar_t__ FUNC6 (struct kernfs_node*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct dentry *FUNC9(struct inode *dir,
					struct dentry *dentry,
					unsigned int flags)
{
	struct dentry *ret;
	struct kernfs_node *parent = dir->i_private;
	struct kernfs_node *kn;
	struct inode *inode;
	const void *ns = NULL;

	FUNC7(&kernfs_mutex);

	if (FUNC6(parent))
		ns = FUNC5(dir->i_sb)->ns;

	kn = FUNC3(parent, dentry->d_name.name, ns);

	/* no such entry */
	if (!kn || !FUNC2(kn)) {
		ret = NULL;
		goto out_unlock;
	}

	/* attach dentry and inode */
	inode = FUNC4(dir->i_sb, kn);
	if (!inode) {
		ret = FUNC0(-ENOMEM);
		goto out_unlock;
	}

	/* instantiate and hash dentry */
	ret = FUNC1(inode, dentry);
 out_unlock:
	FUNC8(&kernfs_mutex);
	return ret;
}