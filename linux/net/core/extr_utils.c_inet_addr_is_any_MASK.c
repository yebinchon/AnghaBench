#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  s6_addr; } ;
struct sockaddr_in6 {TYPE_2__ sin6_addr; } ;
struct TYPE_3__ {scalar_t__ s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr {scalar_t__ sa_family; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 TYPE_2__ IN6ADDR_ANY_INIT ; 
 int /*<<< orphan*/  INADDR_ANY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 

bool FUNC3(struct sockaddr *addr)
{
	if (addr->sa_family == AF_INET6) {
		struct sockaddr_in6 *in6 = (struct sockaddr_in6 *)addr;
		const struct sockaddr_in6 in6_any =
			{ .sin6_addr = IN6ADDR_ANY_INIT };

		if (!FUNC1(in6->sin6_addr.s6_addr,
			    in6_any.sin6_addr.s6_addr, 16))
			return true;
	} else if (addr->sa_family == AF_INET) {
		struct sockaddr_in *in = (struct sockaddr_in *)addr;

		if (in->sin_addr.s_addr == FUNC0(INADDR_ANY))
			return true;
	} else {
		FUNC2("unexpected address family %u\n", addr->sa_family);
	}

	return false;
}