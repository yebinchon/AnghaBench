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
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int FUNC2(int fd, int flags)
{
	int ret;

	ret = FUNC0(fd, F_GETFL, 0);
	if (ret < 0) {
		FUNC1("fcntl(F_GETFL)");
		return ret;
	}
	flags |= ret;
	ret = FUNC0(fd, F_SETFL, flags);
	if (ret < 0) {
		FUNC1("fcntl(F_SETFL)");
		return ret;
	}
	return ret;
}