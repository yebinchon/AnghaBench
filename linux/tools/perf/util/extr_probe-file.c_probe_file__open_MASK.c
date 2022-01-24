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
 int PF_FL_RW ; 
 int PF_FL_UPROBE ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

int FUNC3(int flag)
{
	int fd;

	if (flag & PF_FL_UPROBE)
		fd = FUNC1(flag & PF_FL_RW);
	else
		fd = FUNC0(flag & PF_FL_RW);
	if (fd < 0)
		FUNC2(fd, flag & PF_FL_UPROBE);

	return fd;
}