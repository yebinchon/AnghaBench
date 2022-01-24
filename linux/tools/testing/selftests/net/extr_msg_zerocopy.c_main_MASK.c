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
 int /*<<< orphan*/  IPPROTO_EGP ; 
 int /*<<< orphan*/  IPPROTO_RAW ; 
 int /*<<< orphan*/  PF_PACKET ; 
 int /*<<< orphan*/  PF_RDS ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  SOCK_RAW ; 
 int /*<<< orphan*/  SOCK_SEQPACKET ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  cfg_family ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int,char**) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 

int FUNC4(int argc, char **argv)
{
	const char *cfg_test;

	FUNC2(argc, argv);

	cfg_test = argv[argc - 1];

	if (!FUNC3(cfg_test, "packet"))
		FUNC0(PF_PACKET, SOCK_RAW, 0);
	else if (!FUNC3(cfg_test, "packet_dgram"))
		FUNC0(PF_PACKET, SOCK_DGRAM, 0);
	else if (!FUNC3(cfg_test, "raw"))
		FUNC0(cfg_family, SOCK_RAW, IPPROTO_EGP);
	else if (!FUNC3(cfg_test, "raw_hdrincl"))
		FUNC0(cfg_family, SOCK_RAW, IPPROTO_RAW);
	else if (!FUNC3(cfg_test, "tcp"))
		FUNC0(cfg_family, SOCK_STREAM, 0);
	else if (!FUNC3(cfg_test, "udp"))
		FUNC0(cfg_family, SOCK_DGRAM, 0);
	else if (!FUNC3(cfg_test, "rds"))
		FUNC0(PF_RDS, SOCK_SEQPACKET, 0);
	else
		FUNC1(1, 0, "unknown cfg_test %s", cfg_test);

	return 0;
}