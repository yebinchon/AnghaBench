#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  sin_addr; } ;
struct TYPE_9__ {int /*<<< orphan*/  sin6_addr; } ;
union ipvs_sockaddr {TYPE_3__ in; TYPE_2__ in6; } ;
struct socket {TYPE_4__* sk; TYPE_1__* ops; } ;
struct sockaddr {int dummy; } ;
struct TYPE_12__ {scalar_t__ mcast_af; } ;
struct netns_ipvs {TYPE_7__ bcfg; int /*<<< orphan*/  net; } ;
struct net_device {int /*<<< orphan*/  ifindex; } ;
struct TYPE_11__ {int /*<<< orphan*/  sk_bound_dev_if; int /*<<< orphan*/  sk_reuse; } ;
struct TYPE_8__ {int (* bind ) (struct socket*,struct sockaddr*,int) ;} ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int /*<<< orphan*/  SK_CAN_REUSE ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC0 (union ipvs_sockaddr*,int*,TYPE_7__*,int) ; 
 int FUNC1 (TYPE_4__*,int /*<<< orphan*/ *,struct net_device*) ; 
 int FUNC2 (TYPE_4__*,int /*<<< orphan*/ *,struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct socket**) ; 
 int FUNC6 (struct socket*,struct sockaddr*,int) ; 
 int FUNC7 (struct netns_ipvs*) ; 

__attribute__((used)) static int FUNC8(struct netns_ipvs *ipvs, int id,
			     struct net_device *dev, struct socket **sock_ret)
{
	/* multicast addr */
	union ipvs_sockaddr mcast_addr;
	struct socket *sock;
	int result, salen;

	/* First create a socket */
	result = FUNC5(ipvs->net, ipvs->bcfg.mcast_af, SOCK_DGRAM,
				  IPPROTO_UDP, &sock);
	if (result < 0) {
		FUNC3("Error during creation of socket; terminating\n");
		goto error;
	}
	*sock_ret = sock;
	/* it is equivalent to the REUSEADDR option in user-space */
	sock->sk->sk_reuse = SK_CAN_REUSE;
	result = FUNC7(ipvs);
	if (result > 0)
		FUNC4(sock->sk, 0, result);

	FUNC0(&mcast_addr, &salen, &ipvs->bcfg, id);
	sock->sk->sk_bound_dev_if = dev->ifindex;
	result = sock->ops->bind(sock, (struct sockaddr *)&mcast_addr, salen);
	if (result < 0) {
		FUNC3("Error binding to the multicast addr\n");
		goto error;
	}

	/* join the multicast group */
#ifdef CONFIG_IP_VS_IPV6
	if (ipvs->bcfg.mcast_af == AF_INET6)
		result = join_mcast_group6(sock->sk, &mcast_addr.in6.sin6_addr,
					   dev);
	else
#endif
		result = FUNC1(sock->sk, &mcast_addr.in.sin_addr,
					  dev);
	if (result < 0) {
		FUNC3("Error joining to the multicast group\n");
		goto error;
	}

	return 0;

error:
	return result;
}