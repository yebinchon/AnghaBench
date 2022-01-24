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
struct rtnexthop {int dummy; } ;
struct rtmsg {int dummy; } ;
struct fib_nh_common {scalar_t__ nhc_lwtstate; } ;
struct fib_info {scalar_t__ nh; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 unsigned int RTAX_MAX ; 
 unsigned int TCP_CA_NAME_MAX ; 
 struct fib_nh_common* FUNC1 (struct fib_info*,unsigned int) ; 
 unsigned int FUNC2 (struct fib_info*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int FUNC4 (unsigned int) ; 

__attribute__((used)) static inline size_t FUNC5(struct fib_info *fi)
{
	size_t payload = FUNC0(sizeof(struct rtmsg))
			 + FUNC4(4) /* RTA_TABLE */
			 + FUNC4(4) /* RTA_DST */
			 + FUNC4(4) /* RTA_PRIORITY */
			 + FUNC4(4) /* RTA_PREFSRC */
			 + FUNC4(TCP_CA_NAME_MAX); /* RTAX_CC_ALGO */
	unsigned int nhs = FUNC2(fi);

	/* space for nested metrics */
	payload += FUNC4((RTAX_MAX * FUNC4(4)));

	if (fi->nh)
		payload += FUNC4(4); /* RTA_NH_ID */

	if (nhs) {
		size_t nh_encapsize = 0;
		/* Also handles the special case nhs == 1 */

		/* each nexthop is packed in an attribute */
		size_t nhsize = FUNC4(sizeof(struct rtnexthop));
		unsigned int i;

		/* may contain flow and gateway attribute */
		nhsize += 2 * FUNC4(4);

		/* grab encap info */
		for (i = 0; i < FUNC2(fi); i++) {
			struct fib_nh_common *nhc = FUNC1(fi, i);

			if (nhc->nhc_lwtstate) {
				/* RTA_ENCAP_TYPE */
				nh_encapsize += FUNC3(
						nhc->nhc_lwtstate);
				/* RTA_ENCAP */
				nh_encapsize +=  FUNC4(2);
			}
		}

		/* all nexthops are packed in a nested attribute */
		payload += FUNC4((nhs * nhsize) + nh_encapsize);

	}

	return payload;
}