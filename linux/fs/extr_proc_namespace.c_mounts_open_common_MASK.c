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
struct task_struct {int /*<<< orphan*/  fs; struct nsproxy* nsproxy; } ;
struct seq_file {struct proc_mounts* private; int /*<<< orphan*/  poll_event; } ;
struct path {int dummy; } ;
struct proc_mounts {int (* show ) (struct seq_file*,struct vfsmount*) ;unsigned long long cached_event; struct path root; struct mnt_namespace* ns; } ;
struct nsproxy {struct mnt_namespace* mnt_ns; } ;
struct mnt_namespace {int /*<<< orphan*/  event; } ;
struct inode {int dummy; } ;
struct file {struct seq_file* private_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct path*) ; 
 int /*<<< orphan*/  FUNC1 (struct mnt_namespace*) ; 
 struct task_struct* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  mounts_op ; 
 int /*<<< orphan*/  FUNC3 (struct path*) ; 
 int /*<<< orphan*/  FUNC4 (struct mnt_namespace*) ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*) ; 
 int FUNC6 (struct file*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC8 (struct task_struct*) ; 

__attribute__((used)) static int FUNC9(struct inode *inode, struct file *file,
			      int (*show)(struct seq_file *, struct vfsmount *))
{
	struct task_struct *task = FUNC2(inode);
	struct nsproxy *nsp;
	struct mnt_namespace *ns = NULL;
	struct path root;
	struct proc_mounts *p;
	struct seq_file *m;
	int ret = -EINVAL;

	if (!task)
		goto err;

	FUNC7(task);
	nsp = task->nsproxy;
	if (!nsp || !nsp->mnt_ns) {
		FUNC8(task);
		FUNC5(task);
		goto err;
	}
	ns = nsp->mnt_ns;
	FUNC1(ns);
	if (!task->fs) {
		FUNC8(task);
		FUNC5(task);
		ret = -ENOENT;
		goto err_put_ns;
	}
	FUNC0(task->fs, &root);
	FUNC8(task);
	FUNC5(task);

	ret = FUNC6(file, &mounts_op, sizeof(struct proc_mounts));
	if (ret)
		goto err_put_path;

	m = file->private_data;
	m->poll_event = ns->event;

	p = m->private;
	p->ns = ns;
	p->root = root;
	p->show = show;
	p->cached_event = ~0ULL;

	return 0;

 err_put_path:
	FUNC3(&root);
 err_put_ns:
	FUNC4(ns);
 err:
	return ret;
}