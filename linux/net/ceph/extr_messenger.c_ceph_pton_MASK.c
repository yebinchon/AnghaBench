#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_5__ {int /*<<< orphan*/  s6_addr; } ;
struct sockaddr_in6 {TYPE_2__ sin6_addr; } ;
struct TYPE_4__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct TYPE_6__ {int /*<<< orphan*/  ss_family; } ;
struct ceph_entity_addr {TYPE_3__ in_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_INET6 ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (char const*,size_t,int /*<<< orphan*/ *,char,char const**) ; 
 scalar_t__ FUNC1 (char const*,size_t,int /*<<< orphan*/ *,char,char const**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(const char *str, size_t len, struct ceph_entity_addr *addr,
		char delim, const char **ipend)
{
	FUNC2(&addr->in_addr, 0, sizeof(addr->in_addr));

	if (FUNC0(str, len, (u8 *)&((struct sockaddr_in *)&addr->in_addr)->sin_addr.s_addr, delim, ipend)) {
		FUNC3(AF_INET, &addr->in_addr.ss_family);
		return 0;
	}

	if (FUNC1(str, len, (u8 *)&((struct sockaddr_in6 *)&addr->in_addr)->sin6_addr.s6_addr, delim, ipend)) {
		FUNC3(AF_INET6, &addr->in_addr.ss_family);
		return 0;
	}

	return -EINVAL;
}