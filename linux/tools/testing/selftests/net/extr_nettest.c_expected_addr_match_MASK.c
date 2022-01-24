#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_in6 {int /*<<< orphan*/  sin6_addr; } ;
struct TYPE_2__ {scalar_t__ s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct in_addr {scalar_t__ s_addr; } ;
struct in6_addr {scalar_t__ s_addr; } ;
typedef  int /*<<< orphan*/  addrstr ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct in_addr*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,struct in_addr*,int) ; 

__attribute__((used)) static int FUNC4(struct sockaddr *sa, void *expected,
			       const char *desc)
{
	char addrstr[64];
	int rc = 0;

	if (sa->sa_family == AF_INET) {
		struct sockaddr_in *s = (struct sockaddr_in *) sa;
		struct in_addr *exp_in = (struct in_addr *) expected;

		if (s->sin_addr.s_addr != exp_in->s_addr) {
			FUNC1("%s address does not match expected %s",
				  desc,
				  FUNC0(AF_INET, exp_in,
					    addrstr, sizeof(addrstr)));
			rc = 1;
		}
	} else if (sa->sa_family == AF_INET6) {
		struct sockaddr_in6 *s6 = (struct sockaddr_in6 *) sa;
		struct in6_addr *exp_in = (struct in6_addr *) expected;

		if (FUNC3(&s6->sin6_addr, exp_in, sizeof(*exp_in))) {
			FUNC1("%s address does not match expected %s",
				  desc,
				  FUNC0(AF_INET6, exp_in,
					    addrstr, sizeof(addrstr)));
			rc = 1;
		}
	} else {
		FUNC1("%s address does not match expected - unknown family",
			  desc);
		rc = 1;
	}

	if (!rc)
		FUNC2("%s address matches expected\n", desc);

	return rc;
}