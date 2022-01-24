#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct in_ifaddr {TYPE_1__* ifa_dev; } ;
struct flowi4 {int /*<<< orphan*/  daddr; } ;
struct fib_table {int dummy; } ;
struct fib_result {scalar_t__ type; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {struct net_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FIB_LOOKUP_NOREF ; 
 struct net_device* FUNC0 (struct fib_result) ; 
 scalar_t__ RTN_LOCAL ; 
 int /*<<< orphan*/  RT_TABLE_LOCAL ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct fib_table* FUNC2 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fib_table*,struct flowi4*,struct fib_result*,int /*<<< orphan*/ ) ; 
 struct in_ifaddr* FUNC4 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

struct net_device *FUNC7(struct net *net, __be32 addr, bool devref)
{
	struct net_device *result = NULL;
	struct in_ifaddr *ifa;

	FUNC5();
	ifa = FUNC4(net, addr);
	if (!ifa) {
		struct flowi4 fl4 = { .daddr = addr };
		struct fib_result res = { 0 };
		struct fib_table *local;

		/* Fallback to FIB local table so that communication
		 * over loopback subnets work.
		 */
		local = FUNC2(net, RT_TABLE_LOCAL);
		if (local &&
		    !FUNC3(local, &fl4, &res, FIB_LOOKUP_NOREF) &&
		    res.type == RTN_LOCAL)
			result = FUNC0(res);
	} else {
		result = ifa->ifa_dev->dev;
	}
	if (result && devref)
		FUNC1(result);
	FUNC6();
	return result;
}