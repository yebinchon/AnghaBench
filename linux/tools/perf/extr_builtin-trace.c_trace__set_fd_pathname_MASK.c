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
struct thread_trace {int dummy; } ;
struct thread {int dummy; } ;
struct stat {int /*<<< orphan*/  st_rdev; } ;
struct file {scalar_t__ pathname; int /*<<< orphan*/  dev_maj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const*,struct stat*) ; 
 scalar_t__ FUNC2 (char const*) ; 
 struct thread_trace* FUNC3 (struct thread*) ; 
 struct file* FUNC4 (struct thread_trace*,int) ; 

__attribute__((used)) static int FUNC5(struct thread *thread, int fd, const char *pathname)
{
	struct thread_trace *ttrace = FUNC3(thread);
	struct file *file = FUNC4(ttrace, fd);

	if (file != NULL) {
		struct stat st;
		if (FUNC1(pathname, &st) == 0)
			file->dev_maj = FUNC0(st.st_rdev);
		file->pathname = FUNC2(pathname);
		if (file->pathname)
			return 0;
	}

	return -1;
}