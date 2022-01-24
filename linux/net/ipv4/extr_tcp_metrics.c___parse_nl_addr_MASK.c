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
struct nlattr {int dummy; } ;
struct inetpeer_addr {int dummy; } ;
struct in6_addr {int dummy; } ;
struct genl_info {struct nlattr** attrs; } ;

/* Variables and functions */
 int EAFNOSUPPORT ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct inetpeer_addr*) ; 
 int /*<<< orphan*/  FUNC1 (struct inetpeer_addr*) ; 
 int /*<<< orphan*/  FUNC2 (struct inetpeer_addr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inetpeer_addr*,struct in6_addr*) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 
 struct in6_addr FUNC6 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC7 (struct nlattr*) ; 
 int FUNC8 (struct nlattr*) ; 

__attribute__((used)) static int FUNC9(struct genl_info *info, struct inetpeer_addr *addr,
			   unsigned int *hash, int optional, int v4, int v6)
{
	struct nlattr *a;

	a = info->attrs[v4];
	if (a) {
		FUNC2(addr, FUNC7(a));
		if (hash)
			*hash = FUNC4(FUNC0(addr));
		return 0;
	}
	a = info->attrs[v6];
	if (a) {
		struct in6_addr in6;

		if (FUNC8(a) != sizeof(struct in6_addr))
			return -EINVAL;
		in6 = FUNC6(a);
		FUNC3(addr, &in6);
		if (hash)
			*hash = FUNC5(FUNC1(addr));
		return 0;
	}
	return optional ? 1 : -EAFNOSUPPORT;
}