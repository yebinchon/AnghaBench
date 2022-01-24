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
struct file {int dummy; } ;

/* Variables and functions */
 unsigned long EBADF ; 
 unsigned long MAP_ANONYMOUS ; 
 unsigned long MAP_DENYWRITE ; 
 unsigned long MAP_EXECUTABLE ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,unsigned long) ; 
 struct file* FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct file*) ; 
 unsigned long FUNC3 (struct file*,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long) ; 

unsigned long FUNC4(unsigned long addr, unsigned long len,
			      unsigned long prot, unsigned long flags,
			      unsigned long fd, unsigned long pgoff)
{
	struct file *file = NULL;
	unsigned long retval = -EBADF;

	FUNC0(fd, flags);
	if (!(flags & MAP_ANONYMOUS)) {
		file = FUNC1(fd);
		if (!file)
			goto out;
	}

	flags &= ~(MAP_EXECUTABLE | MAP_DENYWRITE);

	retval = FUNC3(file, addr, len, prot, flags, pgoff);

	if (file)
		FUNC2(file);
out:
	return retval;
}