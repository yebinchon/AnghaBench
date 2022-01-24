#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uid_t ;
struct fd {TYPE_1__* file; } ;
typedef  int /*<<< orphan*/  gid_t ;
struct TYPE_4__ {int /*<<< orphan*/  f_path; } ;

/* Variables and functions */
 int EBADF ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct fd FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct fd) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*) ; 

int FUNC6(unsigned int fd, uid_t user, gid_t group)
{
	struct fd f = FUNC2(fd);
	int error = -EBADF;

	if (!f.file)
		goto out;

	error = FUNC5(f.file);
	if (error)
		goto out_fput;
	FUNC0(f.file);
	error = FUNC1(&f.file->f_path, user, group);
	FUNC4(f.file);
out_fput:
	FUNC3(f);
out:
	return error;
}