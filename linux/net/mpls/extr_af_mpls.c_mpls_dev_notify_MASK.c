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
struct net_device {scalar_t__ type; int /*<<< orphan*/  mpls_ptr; } ;
struct mpls_dev {int /*<<< orphan*/  rcu; } ;

/* Variables and functions */
 scalar_t__ ARPHRD_ETHER ; 
 scalar_t__ ARPHRD_IP6GRE ; 
 scalar_t__ ARPHRD_IPGRE ; 
 scalar_t__ ARPHRD_LOOPBACK ; 
 scalar_t__ ARPHRD_SIT ; 
 scalar_t__ ARPHRD_TUNNEL ; 
 unsigned int IFF_LOWER_UP ; 
 unsigned int IFF_RUNNING ; 
 scalar_t__ FUNC0 (struct mpls_dev*) ; 
#define  NETDEV_CHANGE 132 
#define  NETDEV_CHANGENAME 131 
#define  NETDEV_DOWN 130 
 unsigned long NETDEV_REGISTER ; 
#define  NETDEV_UNREGISTER 129 
#define  NETDEV_UP 128 
 int NOTIFY_OK ; 
 int FUNC1 (struct mpls_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int RTNH_F_DEAD ; 
 int RTNH_F_LINKDOWN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (struct net_device*) ; 
 struct mpls_dev* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  mpls_dev_destroy_rcu ; 
 struct mpls_dev* FUNC6 (struct net_device*) ; 
 int FUNC7 (struct net_device*,struct mpls_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,struct mpls_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*,int) ; 
 struct net_device* FUNC11 (void*) ; 
 int FUNC12 (int) ; 

__attribute__((used)) static int FUNC13(struct notifier_block *this, unsigned long event,
			   void *ptr)
{
	struct net_device *dev = FUNC11(ptr);
	struct mpls_dev *mdev;
	unsigned int flags;

	if (event == NETDEV_REGISTER) {

		/* For now just support Ethernet, IPGRE, IP6GRE, SIT and
		 * IPIP devices
		 */
		if (dev->type == ARPHRD_ETHER ||
		    dev->type == ARPHRD_LOOPBACK ||
		    dev->type == ARPHRD_IPGRE ||
		    dev->type == ARPHRD_IP6GRE ||
		    dev->type == ARPHRD_SIT ||
		    dev->type == ARPHRD_TUNNEL) {
			mdev = FUNC5(dev);
			if (FUNC0(mdev))
				return FUNC12(FUNC1(mdev));
		}
		return NOTIFY_OK;
	}

	mdev = FUNC6(dev);
	if (!mdev)
		return NOTIFY_OK;

	switch (event) {
	case NETDEV_DOWN:
		FUNC9(dev, event);
		break;
	case NETDEV_UP:
		flags = FUNC4(dev);
		if (flags & (IFF_RUNNING | IFF_LOWER_UP))
			FUNC10(dev, RTNH_F_DEAD | RTNH_F_LINKDOWN);
		else
			FUNC10(dev, RTNH_F_DEAD);
		break;
	case NETDEV_CHANGE:
		flags = FUNC4(dev);
		if (flags & (IFF_RUNNING | IFF_LOWER_UP))
			FUNC10(dev, RTNH_F_DEAD | RTNH_F_LINKDOWN);
		else
			FUNC9(dev, event);
		break;
	case NETDEV_UNREGISTER:
		FUNC9(dev, event);
		mdev = FUNC6(dev);
		if (mdev) {
			FUNC8(dev, mdev);
			FUNC2(dev->mpls_ptr, NULL);
			FUNC3(&mdev->rcu, mpls_dev_destroy_rcu);
		}
		break;
	case NETDEV_CHANGENAME:
		mdev = FUNC6(dev);
		if (mdev) {
			int err;

			FUNC8(dev, mdev);
			err = FUNC7(dev, mdev);
			if (err)
				return FUNC12(err);
		}
		break;
	}
	return NOTIFY_OK;
}