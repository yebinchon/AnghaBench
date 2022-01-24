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
struct ipv6hdr {int nexthdr; } ;
struct ipv6_rt_hdr {int dummy; } ;
struct ipv6_opt_hdr {int nexthdr; } ;

/* Variables and functions */
 int EINVAL ; 
#define  NEXTHDR_DEST 130 
#define  NEXTHDR_HOP 129 
#define  NEXTHDR_ROUTING 128 
 int XFRM_POLICY_OUT ; 
 int /*<<< orphan*/  FUNC0 (struct ipv6_opt_hdr*) ; 
 int /*<<< orphan*/  FUNC1 (struct ipv6hdr*,struct ipv6_opt_hdr*) ; 
 int /*<<< orphan*/  FUNC2 (struct ipv6hdr*,struct ipv6_rt_hdr*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct ipv6_opt_hdr*) ; 

__attribute__((used)) static int FUNC5(struct ipv6hdr *iph, int len, int dir)
{
	union {
		struct ipv6hdr *iph;
		struct ipv6_opt_hdr *opth;
		struct ipv6_rt_hdr *rth;
		char *raw;
	} exthdr = { .iph = iph };
	char *end = exthdr.raw + len;
	int nexthdr = iph->nexthdr;

	exthdr.iph++;

	while (exthdr.raw < end) {
		switch (nexthdr) {
		case NEXTHDR_DEST:
			if (dir == XFRM_POLICY_OUT)
				FUNC1(iph, exthdr.opth);
			/* fall through */
		case NEXTHDR_HOP:
			if (!FUNC4(exthdr.opth)) {
				FUNC3("overrun %sopts\n",
						    nexthdr == NEXTHDR_HOP ?
						    "hop" : "dest");
				return -EINVAL;
			}
			break;

		case NEXTHDR_ROUTING:
			FUNC2(iph, exthdr.rth);
			break;

		default:
			return 0;
		}

		nexthdr = exthdr.opth->nexthdr;
		exthdr.raw += FUNC0(exthdr.opth);
	}

	return 0;
}