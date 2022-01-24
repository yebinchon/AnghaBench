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
struct fd {int /*<<< orphan*/  file; } ;

/* Variables and functions */
 int EBADF ; 
 int FUNC0 (int /*<<< orphan*/ ,unsigned int,unsigned int,unsigned long) ; 
 struct fd FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct fd) ; 
 int FUNC3 (int /*<<< orphan*/ ,unsigned int,unsigned long) ; 

int FUNC4(unsigned int fd, unsigned int cmd, unsigned long arg)
{
	int error;
	struct fd f = FUNC1(fd);

	if (!f.file)
		return -EBADF;
	error = FUNC3(f.file, cmd, arg);
	if (!error)
		error = FUNC0(f.file, fd, cmd, arg);
	FUNC2(f);
	return error;
}