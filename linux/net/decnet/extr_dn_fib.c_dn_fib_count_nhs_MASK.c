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
struct rtnexthop {int dummy; } ;
struct nlattr {int dummy; } ;

/* Variables and functions */
 struct rtnexthop* FUNC0 (struct nlattr const*) ; 
 int FUNC1 (struct nlattr const*) ; 
 struct rtnexthop* FUNC2 (struct rtnexthop*,int*) ; 
 scalar_t__ FUNC3 (struct rtnexthop*,int) ; 

__attribute__((used)) static int FUNC4(const struct nlattr *attr)
{
	struct rtnexthop *nhp = FUNC0(attr);
	int nhs = 0, nhlen = FUNC1(attr);

	while (FUNC3(nhp, nhlen)) {
		nhs++;
		nhp = FUNC2(nhp, &nhlen);
	}

	/* leftover implies invalid nexthop configuration, discard it */
	return nhlen > 0 ? 0 : nhs;
}