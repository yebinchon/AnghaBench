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
struct sockaddr_in6 {int /*<<< orphan*/  sin6_addr; int /*<<< orphan*/  sin6_port; int /*<<< orphan*/  sin6_family; } ;
typedef  int /*<<< orphan*/  one ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  FLOWLABEL_WILDCARD ; 
 int /*<<< orphan*/  IN6ADDR_LOOPBACK_INIT ; 
 int /*<<< orphan*/  IPV6_FLOWINFO ; 
 int /*<<< orphan*/  IPV6_FL_F_CREATE ; 
 int /*<<< orphan*/  IPV6_FL_S_EXCL ; 
 int /*<<< orphan*/  PF_INET6 ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  SOL_IPV6 ; 
 scalar_t__ FUNC0 (int,void*,int) ; 
 int /*<<< orphan*/  cfg_label ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int,void*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int,char**) ; 
 scalar_t__ FUNC11 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const*,int) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC13(int argc, char **argv)
{
	struct sockaddr_in6 addr = {
		.sin6_family = AF_INET6,
		.sin6_port = FUNC9(8000),
		.sin6_addr = IN6ADDR_LOOPBACK_INIT,
	};
	const int one = 1;
	int fdt, fdr;

	FUNC10(argc, argv);

	fdt = FUNC12(PF_INET6, SOCK_DGRAM, 0);
	if (fdt == -1)
		FUNC5(1, errno, "socket t");

	fdr = FUNC12(PF_INET6, SOCK_DGRAM, 0);
	if (fdr == -1)
		FUNC5(1, errno, "socket r");

	if (FUNC2(fdt, (void *)&addr, sizeof(addr)))
		FUNC5(1, errno, "connect");
	if (FUNC0(fdr, (void *)&addr, sizeof(addr)))
		FUNC5(1, errno, "bind");

	FUNC6(fdt, cfg_label, IPV6_FL_S_EXCL, IPV6_FL_F_CREATE);

	if (FUNC11(fdr, SOL_IPV6, IPV6_FLOWINFO, &one, sizeof(one)))
		FUNC5(1, errno, "setsockopt flowinfo");

	if (FUNC8()) {
		FUNC7(stderr, "send no label: recv auto flowlabel\n");
		FUNC4(fdt, false, 0);
		FUNC3(fdr, true, FLOWLABEL_WILDCARD);
	} else {
		FUNC7(stderr, "send no label: recv no label (auto off)\n");
		FUNC4(fdt, false, 0);
		FUNC3(fdr, false, 0);
	}

	FUNC7(stderr, "send label\n");
	FUNC4(fdt, true, cfg_label);
	FUNC3(fdr, true, cfg_label);

	if (FUNC1(fdr))
		FUNC5(1, errno, "close r");
	if (FUNC1(fdt))
		FUNC5(1, errno, "close t");

	return 0;
}