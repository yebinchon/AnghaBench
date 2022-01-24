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
typedef  size_t u32 ;
struct net {int dummy; } ;
struct in_ifaddr {int /*<<< orphan*/  hash; int /*<<< orphan*/  ifa_local; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC2 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * inet_addr_lst ; 

__attribute__((used)) static void FUNC3(struct net *net, struct in_ifaddr *ifa)
{
	u32 hash = FUNC2(net, ifa->ifa_local);

	FUNC0();
	FUNC1(&ifa->hash, &inet_addr_lst[hash]);
}