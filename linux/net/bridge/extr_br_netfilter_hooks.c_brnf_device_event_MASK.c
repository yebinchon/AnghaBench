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
struct notifier_block {int dummy; } ;
struct net_device {int priv_flags; } ;
struct net {int dummy; } ;
struct brnf_net {int enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int IFF_EBRIDGE ; 
 unsigned long NETDEV_REGISTER ; 
 int NOTIFY_BAD ; 
 int NOTIFY_DONE ; 
 int NOTIFY_OK ; 
 int /*<<< orphan*/  br_nf_ops ; 
 int /*<<< orphan*/  brnf_net_id ; 
 struct net* FUNC2 (struct net_device*) ; 
 struct brnf_net* FUNC3 (struct net*,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC4 (void*) ; 
 int FUNC5 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct notifier_block *unused, unsigned long event,
			     void *ptr)
{
	struct net_device *dev = FUNC4(ptr);
	struct brnf_net *brnet;
	struct net *net;
	int ret;

	if (event != NETDEV_REGISTER || !(dev->priv_flags & IFF_EBRIDGE))
		return NOTIFY_DONE;

	FUNC1();

	net = FUNC2(dev);
	brnet = FUNC3(net, brnf_net_id);
	if (brnet->enabled)
		return NOTIFY_OK;

	ret = FUNC5(net, br_nf_ops, FUNC0(br_nf_ops));
	if (ret)
		return NOTIFY_BAD;

	brnet->enabled = true;
	return NOTIFY_OK;
}