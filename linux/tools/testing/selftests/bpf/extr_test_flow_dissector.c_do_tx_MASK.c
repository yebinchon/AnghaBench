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
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (int,char const*,int) ; 

__attribute__((used)) static int FUNC2(int fd, const char *pkt, int len)
{
	int ret;

	ret = FUNC1(fd, pkt, len);
	if (ret == -1)
		FUNC0(1, errno, "send");
	if (ret != len)
		FUNC0(1, errno, "send: len (%d < %d)\n", ret, len);

	return 1;
}