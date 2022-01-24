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
 int IPPROTO_RAW ; 
 int PF_PACKET ; 
 int SOCK_RAW ; 
 int SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_RCVBUF ; 
 int /*<<< orphan*/  SO_RCVLOWAT ; 
 int /*<<< orphan*/  SO_REUSEPORT ; 
 scalar_t__ FUNC0 (int,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cfg_alen ; 
 int /*<<< orphan*/  cfg_dst_addr ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (int,int) ; 
 int FUNC5 (int,int,int) ; 

__attribute__((used)) static int FUNC6(int domain, int type, int protocol)
{
	int fd;

	/* If tx over PF_PACKET, rx over PF_INET(6)/SOCK_RAW,
	 * to recv the only copy of the packet, not a clone
	 */
	if (domain == PF_PACKET)
		FUNC3(1, 0, "Use PF_INET/SOCK_RAW to read");

	if (type == SOCK_RAW && protocol == IPPROTO_RAW)
		FUNC3(1, 0, "IPPROTO_RAW: not supported on Rx");

	fd = FUNC5(domain, type, protocol);
	if (fd == -1)
		FUNC3(1, errno, "socket r");

	FUNC2(fd, SOL_SOCKET, SO_RCVBUF, 1 << 21);
	FUNC2(fd, SOL_SOCKET, SO_RCVLOWAT, 1 << 16);
	FUNC2(fd, SOL_SOCKET, SO_REUSEPORT, 1);

	if (FUNC0(fd, (void *) &cfg_dst_addr, cfg_alen))
		FUNC3(1, errno, "bind");

	if (type == SOCK_STREAM) {
		if (FUNC4(fd, 1))
			FUNC3(1, errno, "listen");
		fd = FUNC1(fd);
	}

	return fd;
}