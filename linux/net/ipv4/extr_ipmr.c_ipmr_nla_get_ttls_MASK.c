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
struct rtnexthop {int /*<<< orphan*/  rtnh_hops; } ;
struct nlattr {int dummy; } ;
struct mfcctl {int /*<<< orphan*/ * mfcc_ttls; } ;

/* Variables and functions */
 int EINVAL ; 
 int MAXVIFS ; 
 struct rtnexthop* FUNC0 (struct nlattr const*) ; 
 int FUNC1 (struct nlattr const*) ; 
 struct rtnexthop* FUNC2 (struct rtnexthop*,int*) ; 
 scalar_t__ FUNC3 (struct rtnexthop*,int) ; 

__attribute__((used)) static int FUNC4(const struct nlattr *nla, struct mfcctl *mfcc)
{
	struct rtnexthop *rtnh = FUNC0(nla);
	int remaining = FUNC1(nla), vifi = 0;

	while (FUNC3(rtnh, remaining)) {
		mfcc->mfcc_ttls[vifi] = rtnh->rtnh_hops;
		if (++vifi == MAXVIFS)
			break;
		rtnh = FUNC2(rtnh, &remaining);
	}

	return remaining > 0 ? -EINVAL : vifi;
}