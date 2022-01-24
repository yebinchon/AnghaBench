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
struct sctp_sock {int dummy; } ;
typedef  int sa_family_t ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_sock*) ; 

__attribute__((used)) static int FUNC2(sa_family_t family, struct sctp_sock *sp)
{
	switch (family) {
	case AF_INET6:
		return 1;
	/* v4-mapped-v6 addresses */
	case AF_INET:
		if (!FUNC0(FUNC1(sp)))
			return 1;
		/* fallthru */
	default:
		return 0;
	}
}