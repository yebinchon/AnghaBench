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
struct fd {scalar_t__ file; } ;

/* Variables and functions */
 int EBADF ; 
 struct fd FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct fd) ; 
 int FUNC2 (scalar_t__,int) ; 

__attribute__((used)) static int FUNC3(unsigned int fd, int datasync)
{
	struct fd f = FUNC0(fd);
	int ret = -EBADF;

	if (f.file) {
		ret = FUNC2(f.file, datasync);
		FUNC1(f);
	}
	return ret;
}