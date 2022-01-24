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
struct net_device_ops {int (* ndo_do_ioctl ) (struct net_device*,struct ifreq*,int) ;} ;
struct net_device {int /*<<< orphan*/  name; struct net_device_ops* netdev_ops; } ;
struct ifreq {int /*<<< orphan*/  ifr_ifru; int /*<<< orphan*/  ifr_name; } ;
struct TYPE_2__ {struct net_device* real_dev; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  IFNAMSIZ ; 
#define  SIOCGHWTSTAMP 132 
#define  SIOCGMIIPHY 131 
#define  SIOCGMIIREG 130 
#define  SIOCSHWTSTAMP 129 
#define  SIOCSMIIREG 128 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct net_device*,struct ifreq*,int) ; 
 TYPE_1__* FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev, struct ifreq *ifr, int cmd)
{
	struct net_device *real_dev = FUNC5(dev)->real_dev;
	const struct net_device_ops *ops = real_dev->netdev_ops;
	struct ifreq ifrr;
	int err = -EOPNOTSUPP;

	FUNC3(ifrr.ifr_name, real_dev->name, IFNAMSIZ);
	ifrr.ifr_ifru = ifr->ifr_ifru;

	switch (cmd) {
	case SIOCSHWTSTAMP:
		if (!FUNC1(FUNC0(dev), &init_net))
			break;
		/* fall through */
	case SIOCGMIIPHY:
	case SIOCGMIIREG:
	case SIOCSMIIREG:
	case SIOCGHWTSTAMP:
		if (FUNC2(real_dev) && ops->ndo_do_ioctl)
			err = ops->ndo_do_ioctl(real_dev, &ifrr, cmd);
		break;
	}

	if (!err)
		ifr->ifr_ifru = ifrr.ifr_ifru;

	return err;
}