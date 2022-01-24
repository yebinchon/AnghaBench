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
 int FUNC0 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC3(int fd)
{
	int fda = fd;

	fd = FUNC0(fda, NULL, NULL);
	if (fd == -1)
		FUNC2(1, errno, "accept");
	if (FUNC1(fda))
		FUNC2(1, errno, "close listen sock");

	return fd;
}