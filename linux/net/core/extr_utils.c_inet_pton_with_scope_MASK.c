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
typedef  scalar_t__ u16 ;
struct sockaddr_storage {int dummy; } ;
struct net {int dummy; } ;
typedef  int __kernel_sa_family_t ;

/* Variables and functions */
#define  AF_INET 130 
#define  AF_INET6 129 
#define  AF_UNSPEC 128 
 int EINVAL ; 
 int FUNC0 (char const*,scalar_t__,struct sockaddr_storage*) ; 
 int FUNC1 (struct net*,char const*,scalar_t__,struct sockaddr_storage*) ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

int FUNC4(struct net *net, __kernel_sa_family_t af,
		const char *src, const char *port, struct sockaddr_storage *addr)
{
	u16 port_num;
	int ret = -EINVAL;

	if (port) {
		if (FUNC2(port, 0, &port_num))
			return -EINVAL;
	} else {
		port_num = 0;
	}

	switch (af) {
	case AF_INET:
		ret = FUNC0(src, port_num, addr);
		break;
	case AF_INET6:
		ret = FUNC1(net, src, port_num, addr);
		break;
	case AF_UNSPEC:
		ret = FUNC0(src, port_num, addr);
		if (ret)
			ret = FUNC1(net, src, port_num, addr);
		break;
	default:
		FUNC3("unexpected address family %d\n", af);
	}

	return ret;
}