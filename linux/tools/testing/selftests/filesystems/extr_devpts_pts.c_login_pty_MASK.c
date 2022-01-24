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
 int STDERR_FILENO ; 
 int /*<<< orphan*/  TIOCSCTTY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(int fd)
{
	int ret;

	FUNC2();

	ret = FUNC1(fd, TIOCSCTTY, NULL);
	if (ret < 0)
		return -1;

	ret = FUNC3(fd);
	if (ret < 0)
		return -1;

	if (fd > STDERR_FILENO)
		FUNC0(fd);

	return 0;
}