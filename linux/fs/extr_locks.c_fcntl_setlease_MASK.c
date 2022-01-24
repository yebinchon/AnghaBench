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
 long F_UNLCK ; 
 int FUNC0 (unsigned int,struct file*,long) ; 
 int FUNC1 (struct file*,long,int /*<<< orphan*/ *,void**) ; 

int FUNC2(unsigned int fd, struct file *filp, long arg)
{
	if (arg == F_UNLCK)
		return FUNC1(filp, F_UNLCK, NULL, (void **)&filp);
	return FUNC0(fd, filp, arg);
}