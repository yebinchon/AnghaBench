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
typedef  int /*<<< orphan*/  u32 ;
struct net {int dummy; } ;
struct in6_addr {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net*,struct in6_addr const*,struct in6_addr const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__be32 FUNC2(struct net *net,
			 const struct in6_addr *daddr,
			 const struct in6_addr *saddr)
{
	u32 id;

	id = FUNC0(net, daddr, saddr);
	return FUNC1(id);
}