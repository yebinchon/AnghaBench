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
 int PF_PACKET ; 
 int PF_RDS ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_SNDBUF ; 
 int /*<<< orphan*/  SO_ZEROCOPY ; 
 scalar_t__ FUNC0 (int,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cfg_alen ; 
 int /*<<< orphan*/  cfg_dst_addr ; 
 int /*<<< orphan*/  cfg_src_addr ; 
 scalar_t__ cfg_zerocopy ; 
 scalar_t__ FUNC1 (int,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int,int,int) ; 

__attribute__((used)) static int FUNC5(int domain, int type, int protocol)
{
	int fd;

	fd = FUNC4(domain, type, protocol);
	if (fd == -1)
		FUNC3(1, errno, "socket t");

	FUNC2(fd, SOL_SOCKET, SO_SNDBUF, 1 << 21);
	if (cfg_zerocopy)
		FUNC2(fd, SOL_SOCKET, SO_ZEROCOPY, 1);

	if (domain != PF_PACKET && domain != PF_RDS)
		if (FUNC1(fd, (void *) &cfg_dst_addr, cfg_alen))
			FUNC3(1, errno, "connect");

	if (domain == PF_RDS) {
		if (FUNC0(fd, (void *) &cfg_src_addr, cfg_alen))
			FUNC3(1, errno, "bind");
	}

	return fd;
}