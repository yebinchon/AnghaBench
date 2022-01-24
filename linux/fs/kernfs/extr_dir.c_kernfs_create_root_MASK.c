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
struct kernfs_syscall_ops {int dummy; } ;
struct kernfs_root {int next_generation; unsigned int flags; int /*<<< orphan*/  deactivate_waitq; struct kernfs_node* kn; struct kernfs_syscall_ops* syscall_ops; int /*<<< orphan*/  ino_idr; int /*<<< orphan*/  supers; } ;
struct TYPE_2__ {struct kernfs_root* root; } ;
struct kernfs_node {TYPE_1__ dir; void* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct kernfs_root* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GLOBAL_ROOT_GID ; 
 int /*<<< orphan*/  GLOBAL_ROOT_UID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KERNFS_DIR ; 
 int KERNFS_ROOT_CREATE_DEACTIVATED ; 
 int S_IFDIR ; 
 int S_IRUGO ; 
 int S_IXUGO ; 
 struct kernfs_node* FUNC2 (struct kernfs_root*,int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct kernfs_node*) ; 
 int /*<<< orphan*/  FUNC7 (struct kernfs_root*) ; 
 struct kernfs_root* FUNC8 (int,int /*<<< orphan*/ ) ; 

struct kernfs_root *FUNC9(struct kernfs_syscall_ops *scops,
				       unsigned int flags, void *priv)
{
	struct kernfs_root *root;
	struct kernfs_node *kn;

	root = FUNC8(sizeof(*root), GFP_KERNEL);
	if (!root)
		return FUNC0(-ENOMEM);

	FUNC4(&root->ino_idr);
	FUNC1(&root->supers);
	root->next_generation = 1;

	kn = FUNC2(root, NULL, "", S_IFDIR | S_IRUGO | S_IXUGO,
			       GLOBAL_ROOT_UID, GLOBAL_ROOT_GID,
			       KERNFS_DIR);
	if (!kn) {
		FUNC3(&root->ino_idr);
		FUNC7(root);
		return FUNC0(-ENOMEM);
	}

	kn->priv = priv;
	kn->dir.root = root;

	root->syscall_ops = scops;
	root->flags = flags;
	root->kn = kn;
	FUNC5(&root->deactivate_waitq);

	if (!(root->flags & KERNFS_ROOT_CREATE_DEACTIVATED))
		FUNC6(kn);

	return root;
}