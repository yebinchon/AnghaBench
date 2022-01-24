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
struct TYPE_2__ {int sysctl_checksum; } ;
struct net {TYPE_1__ ct; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFPROTO_INET ; 
 scalar_t__ enable_hooks ; 
 int /*<<< orphan*/  FUNC0 (struct net*) ; 
 int FUNC1 (struct net*) ; 
 int /*<<< orphan*/  FUNC2 (struct net*) ; 
 int /*<<< orphan*/  FUNC3 (struct net*) ; 
 int FUNC4 (struct net*) ; 
 int FUNC5 (struct net*) ; 
 int FUNC6 (struct net*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct net *net)
{
	int ret;

	net->ct.sysctl_checksum = 1;

	ret = FUNC5(net);
	if (ret < 0)
		return ret;

	ret = FUNC4(net);
	if (ret < 0)
		goto out_proc;

	ret = FUNC1(net);
	if (ret < 0)
		goto out_init_net;

	if (enable_hooks) {
		ret = FUNC6(net, NFPROTO_INET);
		if (ret < 0)
			goto out_hooks;
	}

	return 0;

out_hooks:
	FUNC0(net);
out_init_net:
	FUNC2(net);
out_proc:
	FUNC3(net);
	return ret;
}