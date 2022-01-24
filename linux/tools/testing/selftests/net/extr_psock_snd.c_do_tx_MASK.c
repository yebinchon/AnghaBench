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
typedef  int /*<<< orphan*/  one ;

/* Variables and functions */
 int /*<<< orphan*/  PACKET_QDISC_BYPASS ; 
 int /*<<< orphan*/  PACKET_VNET_HDR ; 
 int /*<<< orphan*/  PF_PACKET ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  SOCK_RAW ; 
 int /*<<< orphan*/  SOL_PACKET ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cfg_payload_len ; 
 int cfg_truncate_len ; 
 scalar_t__ cfg_use_bind ; 
 scalar_t__ cfg_use_dgram ; 
 scalar_t__ cfg_use_qdisc_bypass ; 
 scalar_t__ cfg_use_vnet ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tbuf ; 

__attribute__((used)) static int FUNC7(void)
{
	const int one = 1;
	int fd, len;

	fd = FUNC6(PF_PACKET, cfg_use_dgram ? SOCK_DGRAM : SOCK_RAW, 0);
	if (fd == -1)
		FUNC4(1, errno, "socket t");

	if (cfg_use_bind)
		FUNC2(fd);

	if (cfg_use_qdisc_bypass &&
	    FUNC5(fd, SOL_PACKET, PACKET_QDISC_BYPASS, &one, sizeof(one)))
		FUNC4(1, errno, "setsockopt qdisc bypass");

	if (cfg_use_vnet &&
	    FUNC5(fd, SOL_PACKET, PACKET_VNET_HDR, &one, sizeof(one)))
		FUNC4(1, errno, "setsockopt vnet");

	len = FUNC0(cfg_payload_len);

	if (cfg_truncate_len < len)
		len = cfg_truncate_len;

	FUNC3(fd, tbuf, len);

	if (FUNC1(fd))
		FUNC4(1, errno, "close t");

	return len;
}