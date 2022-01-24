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
 int EINVAL ; 
 int PF_FL_RW ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

int FUNC3(int *kfd, int *ufd, int flag)
{
	if (!kfd || !ufd)
		return -EINVAL;

	*kfd = FUNC0(flag & PF_FL_RW);
	*ufd = FUNC1(flag & PF_FL_RW);
	if (*kfd < 0 && *ufd < 0) {
		FUNC2(*kfd, *ufd);
		return *kfd;
	}

	return 0;
}