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
struct task_struct {int dummy; } ;
struct files_struct {int dummy; } ;
struct file {int /*<<< orphan*/  f_mode; } ;
struct fd_data {unsigned int fd; int /*<<< orphan*/  mode; } ;
struct dir_context {int pos; } ;
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  instantiate_t ;
struct TYPE_2__ {unsigned int max_fds; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct file*,struct dir_context*) ; 
 struct file* FUNC2 (struct files_struct*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct file*) ; 
 TYPE_1__* FUNC4 (struct files_struct*) ; 
 struct files_struct* FUNC5 (struct task_struct*) ; 
 struct task_struct* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct file*,struct dir_context*,char*,unsigned int,int /*<<< orphan*/ ,struct task_struct*,struct fd_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct files_struct*) ; 
 int /*<<< orphan*/  FUNC9 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 unsigned int FUNC12 (char*,int,char*,unsigned int) ; 

__attribute__((used)) static int FUNC13(struct file *file, struct dir_context *ctx,
			      instantiate_t instantiate)
{
	struct task_struct *p = FUNC6(FUNC3(file));
	struct files_struct *files;
	unsigned int fd;

	if (!p)
		return -ENOENT;

	if (!FUNC1(file, ctx))
		goto out;
	files = FUNC5(p);
	if (!files)
		goto out;

	FUNC10();
	for (fd = ctx->pos - 2;
	     fd < FUNC4(files)->max_fds;
	     fd++, ctx->pos++) {
		struct file *f;
		struct fd_data data;
		char name[10 + 1];
		unsigned int len;

		f = FUNC2(files, fd);
		if (!f)
			continue;
		data.mode = f->f_mode;
		FUNC11();
		data.fd = fd;

		len = FUNC12(name, sizeof(name), "%u", fd);
		if (!FUNC7(file, ctx,
				     name, len, instantiate, p,
				     &data))
			goto out_fd_loop;
		FUNC0();
		FUNC10();
	}
	FUNC11();
out_fd_loop:
	FUNC8(files);
out:
	FUNC9(p);
	return 0;
}