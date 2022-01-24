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
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct ncsi_dev_priv {int dummy; } ;
struct ncsi_dev {int dummy; } ;

/* Variables and functions */
 struct ncsi_dev_priv* FUNC0 (struct ncsi_dev*) ; 
 struct net_device* FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 struct ncsi_dev* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ncsi_dev_priv *FUNC5(struct net *net, u32 ifindex)
{
	struct ncsi_dev_priv *ndp;
	struct net_device *dev;
	struct ncsi_dev *nd;
	struct ncsi_dev;

	if (!net)
		return NULL;

	dev = FUNC1(net, ifindex);
	if (!dev) {
		FUNC4("NCSI netlink: No device for ifindex %u\n", ifindex);
		return NULL;
	}

	nd = FUNC3(dev);
	ndp = nd ? FUNC0(nd) : NULL;

	FUNC2(dev);
	return ndp;
}