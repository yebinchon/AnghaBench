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
struct seg6_pernet_data {int /*<<< orphan*/  tun_src; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct in6_addr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPV6_PREFER_SRC_PUBLIC ; 
 int /*<<< orphan*/  FUNC0 (struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC1 (struct net*,struct net_device*,struct in6_addr*,int /*<<< orphan*/ ,struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC2 (struct in6_addr*,struct in6_addr*,int) ; 
 struct in6_addr* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 struct seg6_pernet_data* FUNC6 (struct net*) ; 

__attribute__((used)) static void FUNC7(struct net *net, struct net_device *dev,
			struct in6_addr *daddr, struct in6_addr *saddr)
{
	struct seg6_pernet_data *sdata = FUNC6(net);
	struct in6_addr *tun_src;

	FUNC4();

	tun_src = FUNC3(sdata->tun_src);

	if (!FUNC0(tun_src)) {
		FUNC2(saddr, tun_src, sizeof(struct in6_addr));
	} else {
		FUNC1(net, dev, daddr, IPV6_PREFER_SRC_PUBLIC,
				   saddr);
	}

	FUNC5();
}