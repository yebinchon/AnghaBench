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
struct sockaddr_storage {int ss_family; } ;
struct sockaddr_in6 {int /*<<< orphan*/  sin6_port; int /*<<< orphan*/  sin6_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_addr; } ;
struct ceph_entity_addr {int /*<<< orphan*/  type; struct sockaddr_storage in_addr; } ;

/* Variables and functions */
 int ADDR_STR_COUNT_MASK ; 
#define  AF_INET 129 
#define  AF_INET6 128 
 int /*<<< orphan*/  MAX_ADDR_STR_LEN ; 
 char** addr_str ; 
 int /*<<< orphan*/  addr_str_seq ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*,int,...) ; 

const char *FUNC4(const struct ceph_entity_addr *addr)
{
	int i;
	char *s;
	struct sockaddr_storage ss = addr->in_addr; /* align */
	struct sockaddr_in *in4 = (struct sockaddr_in *)&ss;
	struct sockaddr_in6 *in6 = (struct sockaddr_in6 *)&ss;

	i = FUNC0(&addr_str_seq) & ADDR_STR_COUNT_MASK;
	s = addr_str[i];

	switch (ss.ss_family) {
	case AF_INET:
		FUNC3(s, MAX_ADDR_STR_LEN, "(%d)%pI4:%hu",
			 FUNC1(addr->type), &in4->sin_addr,
			 FUNC2(in4->sin_port));
		break;

	case AF_INET6:
		FUNC3(s, MAX_ADDR_STR_LEN, "(%d)[%pI6c]:%hu",
			 FUNC1(addr->type), &in6->sin6_addr,
			 FUNC2(in6->sin6_port));
		break;

	default:
		FUNC3(s, MAX_ADDR_STR_LEN, "(unknown sockaddr family %hu)",
			 ss.ss_family);
	}

	return s;
}