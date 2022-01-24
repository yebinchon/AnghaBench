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
struct sockaddr_in6 {int /*<<< orphan*/  sin6_scope_id; int /*<<< orphan*/  sin6_addr; int /*<<< orphan*/  sin6_port; int /*<<< orphan*/  sin6_family; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct sockaddr_in6*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(const char *ip, const char *iface,
		       struct sockaddr_in6 *dst)
{
	FUNC4(dst, 0, sizeof(*dst));

	dst->sin6_family = AF_INET6;
	dst->sin6_port = FUNC0(1025);

	if (FUNC2(AF_INET6, ip, &dst->sin6_addr) != 1) {
		FUNC3("Invalid IPv6: %s", ip);
		return -1;
	}

	dst->sin6_scope_id = FUNC1(iface);
	if (!dst->sin6_scope_id) {
		FUNC3("Failed to get index of iface: %s", iface);
		return -1;
	}

	return 0;
}