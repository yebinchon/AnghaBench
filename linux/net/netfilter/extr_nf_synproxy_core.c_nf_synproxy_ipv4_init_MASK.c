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
struct synproxy_net {scalar_t__ hook_ref4; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ipv4_synproxy_ops ; 
 int FUNC1 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(struct synproxy_net *snet, struct net *net)
{
	int err;

	if (snet->hook_ref4 == 0) {
		err = FUNC1(net, ipv4_synproxy_ops,
					    FUNC0(ipv4_synproxy_ops));
		if (err)
			return err;
	}

	snet->hook_ref4++;
	return 0;
}