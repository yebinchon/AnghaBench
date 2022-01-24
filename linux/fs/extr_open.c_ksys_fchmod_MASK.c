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
typedef  int /*<<< orphan*/  umode_t ;
struct fd {TYPE_1__* file; } ;
struct TYPE_2__ {int /*<<< orphan*/  f_path; } ;

/* Variables and functions */
 int EBADF ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct fd FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct fd) ; 

int FUNC4(unsigned int fd, umode_t mode)
{
	struct fd f = FUNC2(fd);
	int err = -EBADF;

	if (f.file) {
		FUNC0(f.file);
		err = FUNC1(&f.file->f_path, mode);
		FUNC3(f);
	}
	return err;
}