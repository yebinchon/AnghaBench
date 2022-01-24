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
struct task_struct {int dummy; } ;
struct inode {int dummy; } ;
struct fd_data {unsigned int fd; int /*<<< orphan*/  mode; } ;
struct dentry {int /*<<< orphan*/  d_name; } ;
typedef  struct dentry* (* instantiate_t ) (struct dentry*,struct task_struct*,struct fd_data*) ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 struct dentry* FUNC0 (int /*<<< orphan*/ ) ; 
 struct task_struct* FUNC1 (struct inode*) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*,unsigned int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct dentry *FUNC5(struct inode *dir,
					   struct dentry *dentry,
					   instantiate_t instantiate)
{
	struct task_struct *task = FUNC1(dir);
	struct fd_data data = {.fd = FUNC2(&dentry->d_name)};
	struct dentry *result = FUNC0(-ENOENT);

	if (!task)
		goto out_no_task;
	if (data.fd == ~0U)
		goto out;
	if (!FUNC4(task, data.fd, &data.mode))
		goto out;

	result = instantiate(dentry, task, &data);
out:
	FUNC3(task);
out_no_task:
	return result;
}