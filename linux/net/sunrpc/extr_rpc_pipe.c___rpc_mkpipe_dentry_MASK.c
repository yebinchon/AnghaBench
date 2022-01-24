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
typedef  int umode_t ;
struct rpc_pipe {int dummy; } ;
struct rpc_inode {struct rpc_pipe* pipe; void* private; } ;
struct inode {int dummy; } ;
struct file_operations {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 struct rpc_inode* FUNC0 (int /*<<< orphan*/ ) ; 
 int S_IFIFO ; 
 int FUNC1 (struct inode*,struct dentry*,int,struct file_operations const*,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,struct dentry*) ; 

__attribute__((used)) static int FUNC4(struct inode *dir, struct dentry *dentry,
			       umode_t mode,
			       const struct file_operations *i_fop,
			       void *private,
			       struct rpc_pipe *pipe)
{
	struct rpc_inode *rpci;
	int err;

	err = FUNC1(dir, dentry, S_IFIFO | mode, i_fop, private);
	if (err)
		return err;
	rpci = FUNC0(FUNC2(dentry));
	rpci->private = private;
	rpci->pipe = pipe;
	FUNC3(dir, dentry);
	return 0;
}