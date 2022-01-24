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
struct sockaddr {int /*<<< orphan*/  sa_data; } ;
struct net_device {int /*<<< orphan*/  addr_len; int /*<<< orphan*/  dev_addr; } ;
struct TYPE_2__ {struct net_device* lowpan_dev; int /*<<< orphan*/  extended_addr; } ;
struct ieee802154_sub_if_data {TYPE_1__ wpan_dev; } ;
typedef  int /*<<< orphan*/  __le64 ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 struct ieee802154_sub_if_data* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev, void *p)
{
	struct ieee802154_sub_if_data *sdata = FUNC0(dev);
	struct sockaddr *addr = p;
	__le64 extended_addr;

	if (FUNC5(dev))
		return -EBUSY;

	/* lowpan need to be down for update
	 * SLAAC address after ifup
	 */
	if (sdata->wpan_dev.lowpan_dev) {
		if (FUNC5(sdata->wpan_dev.lowpan_dev))
			return -EBUSY;
	}

	FUNC1(&extended_addr, addr->sa_data);
	if (!FUNC2(extended_addr))
		return -EINVAL;

	FUNC4(dev->dev_addr, addr->sa_data, dev->addr_len);
	sdata->wpan_dev.extended_addr = extended_addr;

	/* update lowpan interface mac address when
	 * wpan mac has been changed
	 */
	if (sdata->wpan_dev.lowpan_dev)
		FUNC4(sdata->wpan_dev.lowpan_dev->dev_addr, dev->dev_addr,
		       dev->addr_len);

	return FUNC3(dev);
}