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
struct net_device {scalar_t__ type; } ;
struct ieee802154_sub_if_data {int /*<<< orphan*/  sec_mtx; int /*<<< orphan*/  sec; } ;
struct ieee802154_llsec_device_key {int dummy; } ;
typedef  int /*<<< orphan*/  __le64 ;

/* Variables and functions */
 scalar_t__ ARPHRD_IEEE802154 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct ieee802154_sub_if_data* FUNC1 (struct net_device*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ieee802154_llsec_device_key const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct net_device *dev,
			 __le64 device_addr,
			 const struct ieee802154_llsec_device_key *key)
{
	struct ieee802154_sub_if_data *sdata = FUNC1(dev);
	int res;

	FUNC0(dev->type != ARPHRD_IEEE802154);

	FUNC3(&sdata->sec_mtx);
	res = FUNC2(&sdata->sec, device_addr, key);
	FUNC4(&sdata->sec_mtx);

	return res;
}