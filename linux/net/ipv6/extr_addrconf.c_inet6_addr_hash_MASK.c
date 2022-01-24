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
typedef  int u32 ;
struct net {int dummy; } ;
struct in6_addr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IN6_ADDR_HSIZE_SHIFT ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct in6_addr const*) ; 
 int FUNC2 (struct net const*) ; 

__attribute__((used)) static u32 FUNC3(const struct net *net, const struct in6_addr *addr)
{
	u32 val = FUNC1(addr) ^ FUNC2(net);

	return FUNC0(val, IN6_ADDR_HSIZE_SHIFT);
}