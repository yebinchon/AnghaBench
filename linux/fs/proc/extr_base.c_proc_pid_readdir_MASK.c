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
struct tgid_iter {int tgid; int /*<<< orphan*/ * task; } ;
struct pid_namespace {int /*<<< orphan*/  proc_thread_self; int /*<<< orphan*/  proc_self; } ;
struct inode {int /*<<< orphan*/  i_ino; } ;
struct file {int dummy; } ;
struct dir_context {scalar_t__ pos; } ;
typedef  int /*<<< orphan*/  name ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  DT_LNK ; 
 int /*<<< orphan*/  HIDEPID_INVISIBLE ; 
 scalar_t__ PID_MAX_LIMIT ; 
 int TGID_OFFSET ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct inode* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dir_context*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct file*) ; 
 int /*<<< orphan*/  FUNC4 (struct pid_namespace*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct tgid_iter FUNC5 (struct pid_namespace*,struct tgid_iter) ; 
 int /*<<< orphan*/  FUNC6 (struct file*,struct dir_context*,char*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  proc_pid_instantiate ; 
 struct pid_namespace* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC9 (char*,int,char*,int) ; 

int FUNC10(struct file *file, struct dir_context *ctx)
{
	struct tgid_iter iter;
	struct pid_namespace *ns = FUNC7(FUNC3(file));
	loff_t pos = ctx->pos;

	if (pos >= PID_MAX_LIMIT + TGID_OFFSET)
		return 0;

	if (pos == TGID_OFFSET - 2) {
		struct inode *inode = FUNC1(ns->proc_self);
		if (!FUNC2(ctx, "self", 4, inode->i_ino, DT_LNK))
			return 0;
		ctx->pos = pos = pos + 1;
	}
	if (pos == TGID_OFFSET - 1) {
		struct inode *inode = FUNC1(ns->proc_thread_self);
		if (!FUNC2(ctx, "thread-self", 11, inode->i_ino, DT_LNK))
			return 0;
		ctx->pos = pos = pos + 1;
	}
	iter.tgid = pos - TGID_OFFSET;
	iter.task = NULL;
	for (iter = FUNC5(ns, iter);
	     iter.task;
	     iter.tgid += 1, iter = FUNC5(ns, iter)) {
		char name[10 + 1];
		unsigned int len;

		FUNC0();
		if (!FUNC4(ns, iter.task, HIDEPID_INVISIBLE))
			continue;

		len = FUNC9(name, sizeof(name), "%u", iter.tgid);
		ctx->pos = iter.tgid + TGID_OFFSET;
		if (!FUNC6(file, ctx, name, len,
				     proc_pid_instantiate, iter.task, NULL)) {
			FUNC8(iter.task);
			return 0;
		}
	}
	ctx->pos = PID_MAX_LIMIT + TGID_OFFSET;
	return 0;
}