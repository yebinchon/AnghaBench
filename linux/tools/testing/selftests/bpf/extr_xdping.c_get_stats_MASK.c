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
struct pinginfo {scalar_t__* times; int /*<<< orphan*/  member_0; } ;
struct in_addr {int /*<<< orphan*/  s_addr; } ;
typedef  int /*<<< orphan*/  inaddrbuf ;
typedef  int /*<<< orphan*/  __u32 ;
typedef  size_t __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int INET_ADDRSTRLEN ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ *,struct pinginfo*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,size_t,size_t) ; 
 char* FUNC3 (int /*<<< orphan*/ ,struct in_addr*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC6(int fd, __u16 count, __u32 raddr)
{
	struct pinginfo pinginfo = { 0 };
	char inaddrbuf[INET_ADDRSTRLEN];
	struct in_addr inaddr;
	__u16 i;

	inaddr.s_addr = raddr;

	FUNC5("\nXDP RTT data:\n");

	if (FUNC1(fd, &raddr, &pinginfo)) {
		FUNC4("bpf_map_lookup elem: ");
		return 1;
	}

	for (i = 0; i < count; i++) {
		if (pinginfo.times[i] == 0)
			break;

		FUNC5("64 bytes from %s: icmp_seq=%d ttl=64 time=%#.5f ms\n",
		       FUNC3(AF_INET, &inaddr, inaddrbuf,
				 sizeof(inaddrbuf)),
		       count + i + 1,
		       (double)pinginfo.times[i]/1000000);
	}

	if (i < count) {
		FUNC2(stderr, "Expected %zu samples, got %zu.\n", count, i);
		return 1;
	}

	FUNC0(fd, &raddr);

	return 0;
}