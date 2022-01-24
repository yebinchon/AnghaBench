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

/* Variables and functions */
 int errno ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 

int FUNC2(int fd, int datasync)
{
	int ret;
	if (datasync)
		ret = FUNC0(fd);
	else
		ret = FUNC1(fd);

	if (ret < 0)
		return -errno;
	return 0;
}