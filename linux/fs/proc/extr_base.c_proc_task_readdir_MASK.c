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
typedef  scalar_t__ u64 ;
struct task_struct {int dummy; } ;
struct pid_namespace {int dummy; } ;
struct inode {int dummy; } ;
struct file {scalar_t__ f_version; } ;
struct dir_context {scalar_t__ pos; } ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct file*,struct dir_context*) ; 
 struct inode* FUNC1 (struct file*) ; 
 struct task_struct* FUNC2 (int /*<<< orphan*/ ,int,scalar_t__,struct pid_namespace*) ; 
 struct task_struct* FUNC3 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct file*,struct dir_context*,char*,unsigned int,int /*<<< orphan*/ ,struct task_struct*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 struct pid_namespace* FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  proc_task_instantiate ; 
 int /*<<< orphan*/  FUNC8 (struct task_struct*) ; 
 unsigned int FUNC9 (char*,int,char*,int) ; 
 int FUNC10 (struct task_struct*,struct pid_namespace*) ; 

__attribute__((used)) static int FUNC11(struct file *file, struct dir_context *ctx)
{
	struct inode *inode = FUNC1(file);
	struct task_struct *task;
	struct pid_namespace *ns;
	int tid;

	if (FUNC5(inode))
		return -ENOENT;

	if (!FUNC0(file, ctx))
		return 0;

	/* f_version caches the tgid value that the last readdir call couldn't
	 * return. lseek aka telldir automagically resets f_version to 0.
	 */
	ns = FUNC7(inode);
	tid = (int)file->f_version;
	file->f_version = 0;
	for (task = FUNC2(FUNC6(inode), tid, ctx->pos - 2, ns);
	     task;
	     task = FUNC3(task), ctx->pos++) {
		char name[10 + 1];
		unsigned int len;
		tid = FUNC10(task, ns);
		len = FUNC9(name, sizeof(name), "%u", tid);
		if (!FUNC4(file, ctx, name, len,
				proc_task_instantiate, task, NULL)) {
			/* returning this tgid failed, save it as the first
			 * pid for the next readir call */
			file->f_version = (u64)tid;
			FUNC8(task);
			break;
		}
	}

	return 0;
}