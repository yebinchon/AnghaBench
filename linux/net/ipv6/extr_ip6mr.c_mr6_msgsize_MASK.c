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
struct rta_mfc_stats {int dummy; } ;
struct in6_addr {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 size_t FUNC1 (int) ; 
 size_t FUNC2 (int) ; 
 size_t FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(bool unresolved, int maxvif)
{
	size_t len =
		FUNC1(sizeof(struct rtmsg))
		+ FUNC2(4)	/* RTA_TABLE */
		+ FUNC2(sizeof(struct in6_addr))	/* RTA_SRC */
		+ FUNC2(sizeof(struct in6_addr))	/* RTA_DST */
		;

	if (!unresolved)
		len = len
		      + FUNC2(4)	/* RTA_IIF */
		      + FUNC2(0)	/* RTA_MULTIPATH */
		      + maxvif * FUNC0(sizeof(struct rtnexthop))
						/* RTA_MFC_STATS */
		      + FUNC3(sizeof(struct rta_mfc_stats))
		;

	return len;
}