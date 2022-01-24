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
struct vif_device {int flags; struct net_device* dev; } ;
struct net_device {int /*<<< orphan*/  ifindex; } ;
struct mr_table {int maxvif; int mroute_reg_vif_num; int /*<<< orphan*/  id; int /*<<< orphan*/  net; struct vif_device* vif_table; } ;
struct list_head {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mc_forwarding; } ;
struct inet6_dev {TYPE_1__ cnf; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int /*<<< orphan*/  FIB_EVENT_VIF_DEL ; 
 int MIFF_REGISTER ; 
 int /*<<< orphan*/  NETCONFA_MC_FORWARDING ; 
 int /*<<< orphan*/  RTM_NEWNETCONF ; 
 scalar_t__ FUNC0 (struct mr_table*,int) ; 
 struct inet6_dev* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vif_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  mrt_lock ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct mr_table *mrt, int vifi, int notify,
		       struct list_head *head)
{
	struct vif_device *v;
	struct net_device *dev;
	struct inet6_dev *in6_dev;

	if (vifi < 0 || vifi >= mrt->maxvif)
		return -EADDRNOTAVAIL;

	v = &mrt->vif_table[vifi];

	if (FUNC0(mrt, vifi))
		FUNC2(FUNC7(&mrt->net),
					       FIB_EVENT_VIF_DEL, v, vifi,
					       mrt->id);

	FUNC9(&mrt_lock);
	dev = v->dev;
	v->dev = NULL;

	if (!dev) {
		FUNC10(&mrt_lock);
		return -EADDRNOTAVAIL;
	}

#ifdef CONFIG_IPV6_PIMSM_V2
	if (vifi == mrt->mroute_reg_vif_num)
		mrt->mroute_reg_vif_num = -1;
#endif

	if (vifi + 1 == mrt->maxvif) {
		int tmp;
		for (tmp = vifi - 1; tmp >= 0; tmp--) {
			if (FUNC0(mrt, tmp))
				break;
		}
		mrt->maxvif = tmp + 1;
	}

	FUNC10(&mrt_lock);

	FUNC5(dev, -1);

	in6_dev = FUNC1(dev);
	if (in6_dev) {
		in6_dev->cnf.mc_forwarding--;
		FUNC6(FUNC3(dev), RTM_NEWNETCONF,
					     NETCONFA_MC_FORWARDING,
					     dev->ifindex, &in6_dev->cnf);
	}

	if ((v->flags & MIFF_REGISTER) && !notify)
		FUNC8(dev, head);

	FUNC4(dev);
	return 0;
}