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
struct net {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * nf_nat_ipv6_ops ; 
 int FUNC1 (struct net*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct net *net)
{
	int i, ret;

	for (i = 0; i < FUNC0(nf_nat_ipv6_ops); i++) {
		ret = FUNC1(net, &nf_nat_ipv6_ops[i]);
		if (ret) {
			while (i)
				FUNC2(net, &nf_nat_ipv6_ops[--i]);

			return ret;
		}
	}

	return 0;
}