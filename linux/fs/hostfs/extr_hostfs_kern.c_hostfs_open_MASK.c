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
struct inode {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  dentry; } ;
struct file {int f_mode; TYPE_1__ f_path; } ;
typedef  int fmode_t ;
struct TYPE_4__ {int mode; int fd; int /*<<< orphan*/  open_mutex; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FMODE_READ ; 
 int FMODE_WRITE ; 
 TYPE_2__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  append ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (char*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int,int) ; 

__attribute__((used)) static int FUNC8(struct inode *ino, struct file *file)
{
	char *name;
	fmode_t mode;
	int err;
	int r, w, fd;

	mode = file->f_mode & (FMODE_READ | FMODE_WRITE);
	if ((mode & FUNC0(ino)->mode) == mode)
		return 0;

	mode |= FUNC0(ino)->mode;

retry:
	r = w = 0;

	if (mode & FMODE_READ)
		r = 1;
	if (mode & FMODE_WRITE)
		r = w = 1;

	name = FUNC3(file->f_path.dentry);
	if (name == NULL)
		return -ENOMEM;

	fd = FUNC6(name, r, w, append);
	FUNC1(name);
	if (fd < 0)
		return fd;

	FUNC4(&FUNC0(ino)->open_mutex);
	/* somebody else had handled it first? */
	if ((mode & FUNC0(ino)->mode) == mode) {
		FUNC5(&FUNC0(ino)->open_mutex);
		FUNC2(&fd);
		return 0;
	}
	if ((mode | FUNC0(ino)->mode) != mode) {
		mode |= FUNC0(ino)->mode;
		FUNC5(&FUNC0(ino)->open_mutex);
		FUNC2(&fd);
		goto retry;
	}
	if (FUNC0(ino)->fd == -1) {
		FUNC0(ino)->fd = fd;
	} else {
		err = FUNC7(fd, FUNC0(ino)->fd);
		FUNC2(&fd);
		if (err < 0) {
			FUNC5(&FUNC0(ino)->open_mutex);
			return err;
		}
	}
	FUNC0(ino)->mode = mode;
	FUNC5(&FUNC0(ino)->open_mutex);

	return 0;
}