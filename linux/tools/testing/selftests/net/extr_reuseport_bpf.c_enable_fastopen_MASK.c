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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDWR ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int,char*,int) ; 
 int FUNC5 (char*,int,char*,int) ; 
 scalar_t__ FUNC6 (int,char*,int) ; 

void FUNC7(void)
{
	int fd = FUNC3("/proc/sys/net/ipv4/tcp_fastopen", 0);
	int rw_mask = 3;  /* bit 1: client side; bit-2 server side */
	int val, size;
	char buf[16];

	if (fd < 0)
		FUNC2(1, errno, "Unable to open tcp_fastopen sysctl");
	if (FUNC4(fd, buf, sizeof(buf)) <= 0)
		FUNC2(1, errno, "Unable to read tcp_fastopen sysctl");
	val = FUNC0(buf);
	FUNC1(fd);

	if ((val & rw_mask) != rw_mask) {
		fd = FUNC3("/proc/sys/net/ipv4/tcp_fastopen", O_RDWR);
		if (fd < 0)
			FUNC2(1, errno,
			      "Unable to open tcp_fastopen sysctl for writing");
		val |= rw_mask;
		size = FUNC5(buf, 16, "%d", val);
		if (FUNC6(fd, buf, size) <= 0)
			FUNC2(1, errno, "Unable to write tcp_fastopen sysctl");
		FUNC1(fd);
	}
}