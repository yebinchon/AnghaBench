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
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int EBADF ; 
 struct fd FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct fd) ; 
 int FUNC2 (scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(int fd, int mode, loff_t offset, loff_t len)
{
	struct fd f = FUNC0(fd);
	int error = -EBADF;

	if (f.file) {
		error = FUNC2(f.file, mode, offset, len);
		FUNC1(f);
	}
	return error;
}