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
typedef  scalar_t__ off_t ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 scalar_t__ EBADF ; 
 scalar_t__ EINVAL ; 
 scalar_t__ EOVERFLOW ; 
 unsigned int SEEK_MAX ; 
 struct fd FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct fd) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__,unsigned int) ; 

off_t FUNC3(unsigned int fd, off_t offset, unsigned int whence)
{
	off_t retval;
	struct fd f = FUNC0(fd);
	if (!f.file)
		return -EBADF;

	retval = -EINVAL;
	if (whence <= SEEK_MAX) {
		loff_t res = FUNC2(f.file, offset, whence);
		retval = res;
		if (res != (loff_t)retval)
			retval = -EOVERFLOW;	/* LFS: should only happen on 32 bit platforms */
	}
	FUNC1(f);
	return retval;
}