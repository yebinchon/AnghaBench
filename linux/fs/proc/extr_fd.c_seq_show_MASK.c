#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct task_struct {int dummy; } ;
struct seq_file {int /*<<< orphan*/  private; } ;
struct files_struct {int /*<<< orphan*/  file_lock; } ;
struct TYPE_4__ {int /*<<< orphan*/  mnt; } ;
struct file {int f_flags; TYPE_2__* f_op; TYPE_1__ f_path; scalar_t__ f_pos; } ;
struct fdtable {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  mnt_id; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* show_fdinfo ) (struct seq_file*,struct file*) ;} ;

/* Variables and functions */
 int ENOENT ; 
 int O_CLOEXEC ; 
 scalar_t__ FUNC0 (unsigned int,struct fdtable*) ; 
 struct file* FUNC1 (struct files_struct*,unsigned int) ; 
 struct fdtable* FUNC2 (struct files_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct file*) ; 
 int /*<<< orphan*/  FUNC4 (struct file*) ; 
 struct files_struct* FUNC5 (struct task_struct*) ; 
 struct task_struct* FUNC6 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct files_struct*) ; 
 int /*<<< orphan*/  FUNC9 (struct task_struct*) ; 
 TYPE_3__* FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct seq_file*) ; 
 int /*<<< orphan*/  FUNC12 (struct seq_file*,char*,long long,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct seq_file*,struct file*,struct files_struct*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct seq_file*,struct file*) ; 

__attribute__((used)) static int FUNC17(struct seq_file *m, void *v)
{
	struct files_struct *files = NULL;
	int f_flags = 0, ret = -ENOENT;
	struct file *file = NULL;
	struct task_struct *task;

	task = FUNC6(m->private);
	if (!task)
		return -ENOENT;

	files = FUNC5(task);
	FUNC9(task);

	if (files) {
		unsigned int fd = FUNC7(m->private);

		FUNC14(&files->file_lock);
		file = FUNC1(files, fd);
		if (file) {
			struct fdtable *fdt = FUNC2(files);

			f_flags = file->f_flags;
			if (FUNC0(fd, fdt))
				f_flags |= O_CLOEXEC;

			FUNC4(file);
			ret = 0;
		}
		FUNC15(&files->file_lock);
		FUNC8(files);
	}

	if (ret)
		return ret;

	FUNC12(m, "pos:\t%lli\nflags:\t0%o\nmnt_id:\t%i\n",
		   (long long)file->f_pos, f_flags,
		   FUNC10(file->f_path.mnt)->mnt_id);

	FUNC13(m, file, files);
	if (FUNC11(m))
		goto out;

	if (file->f_op->show_fdinfo)
		file->f_op->show_fdinfo(m, file);

out:
	FUNC3(file);
	return 0;
}