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
struct pktgen_net {int dummy; } ;
struct pktgen_dev {struct net_device* odev; } ;
struct net_device {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ ARPHRD_ETHER ; 
 int EINVAL ; 
 int ENETDOWN ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct net_device* FUNC2 (struct pktgen_net const*,struct pktgen_dev*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 

__attribute__((used)) static int FUNC4(const struct pktgen_net *pn,
			    struct pktgen_dev *pkt_dev, const char *ifname)
{
	struct net_device *odev;
	int err;

	/* Clean old setups */
	if (pkt_dev->odev) {
		FUNC0(pkt_dev->odev);
		pkt_dev->odev = NULL;
	}

	odev = FUNC2(pn, pkt_dev, ifname);
	if (!odev) {
		FUNC3("no such netdevice: \"%s\"\n", ifname);
		return -ENODEV;
	}

	if (odev->type != ARPHRD_ETHER) {
		FUNC3("not an ethernet device: \"%s\"\n", ifname);
		err = -EINVAL;
	} else if (!FUNC1(odev)) {
		FUNC3("device is down: \"%s\"\n", ifname);
		err = -ENETDOWN;
	} else {
		pkt_dev->odev = odev;
		return 0;
	}

	FUNC0(odev);
	return err;
}