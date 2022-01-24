#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct net_device {int /*<<< orphan*/  name; TYPE_2__* ieee802154_ptr; int /*<<< orphan*/  type; int /*<<< orphan*/  perm_addr; int /*<<< orphan*/  dev_addr; scalar_t__ needed_headroom; } ;
struct TYPE_6__ {TYPE_4__* wpan_phy; } ;
struct ieee802154_sub_if_data {int /*<<< orphan*/  list; struct ieee802154_local* local; TYPE_2__ wpan_dev; struct net_device* dev; int /*<<< orphan*/  name; } ;
struct TYPE_7__ {TYPE_4__* phy; scalar_t__ extra_tx_headroom; } ;
struct ieee802154_local {int /*<<< orphan*/  iflist_mtx; int /*<<< orphan*/  interfaces; TYPE_3__ hw; TYPE_1__* phy; } ;
typedef  enum nl802154_iftype { ____Placeholder_nl802154_iftype } nl802154_iftype ;
typedef  int /*<<< orphan*/  __le64 ;
struct TYPE_8__ {int /*<<< orphan*/  perm_extended_addr; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARPHRD_IEEE802154 ; 
 int /*<<< orphan*/  ARPHRD_IEEE802154_MONITOR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int EINVAL ; 
 int ENOMEM ; 
 struct net_device* FUNC1 (int) ; 
 int /*<<< orphan*/  IEEE802154_EXTENDED_ADDR_LEN ; 
 scalar_t__ IEEE802154_MAX_HEADER_LEN ; 
 int /*<<< orphan*/  IFNAMSIZ ; 
#define  NL802154_IFTYPE_MONITOR 129 
#define  NL802154_IFTYPE_NODE 128 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ *) ; 
 struct net_device* FUNC3 (int,char const*,unsigned char,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  ieee802154_if_setup ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct ieee802154_sub_if_data*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 struct ieee802154_sub_if_data* FUNC14 (struct net_device*) ; 
 int FUNC15 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*) ; 

struct net_device *
FUNC17(struct ieee802154_local *local, const char *name,
		  unsigned char name_assign_type, enum nl802154_iftype type,
		  __le64 extended_addr)
{
	struct net_device *ndev = NULL;
	struct ieee802154_sub_if_data *sdata = NULL;
	int ret = -ENOMEM;

	FUNC0();

	ndev = FUNC3(sizeof(*sdata), name,
			    name_assign_type, ieee802154_if_setup);
	if (!ndev)
		return FUNC1(-ENOMEM);

	ndev->needed_headroom = local->hw.extra_tx_headroom +
				IEEE802154_MAX_HEADER_LEN;

	ret = FUNC4(ndev, ndev->name);
	if (ret < 0)
		goto err;

	FUNC8(ndev->perm_addr,
				&local->hw.phy->perm_extended_addr);
	switch (type) {
	case NL802154_IFTYPE_NODE:
		ndev->type = ARPHRD_IEEE802154;
		if (FUNC7(extended_addr))
			FUNC8(ndev->dev_addr, &extended_addr);
		else
			FUNC11(ndev->dev_addr, ndev->perm_addr,
			       IEEE802154_EXTENDED_ADDR_LEN);
		break;
	case NL802154_IFTYPE_MONITOR:
		ndev->type = ARPHRD_IEEE802154_MONITOR;
		break;
	default:
		ret = -EINVAL;
		goto err;
	}

	/* TODO check this */
	FUNC2(ndev, &local->phy->dev);
	FUNC5(ndev, FUNC16(local->hw.phy));
	sdata = FUNC14(ndev);
	ndev->ieee802154_ptr = &sdata->wpan_dev;
	FUNC11(sdata->name, ndev->name, IFNAMSIZ);
	sdata->dev = ndev;
	sdata->wpan_dev.wpan_phy = local->hw.phy;
	sdata->local = local;

	/* setup type-dependent data */
	ret = FUNC9(sdata, type);
	if (ret)
		goto err;

	ret = FUNC15(ndev);
	if (ret < 0)
		goto err;

	FUNC12(&local->iflist_mtx);
	FUNC10(&sdata->list, &local->interfaces);
	FUNC13(&local->iflist_mtx);

	return ndev;

err:
	FUNC6(ndev);
	return FUNC1(ret);
}