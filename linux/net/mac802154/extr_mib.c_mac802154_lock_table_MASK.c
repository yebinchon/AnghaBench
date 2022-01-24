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
struct ieee802154_sub_if_data {int /*<<< orphan*/  sec_mtx; } ;

/* Variables and functions */
 scalar_t__ ARPHRD_IEEE802154 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct ieee802154_sub_if_data* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct net_device *dev)
{
	struct ieee802154_sub_if_data *sdata = FUNC1(dev);

	FUNC0(dev->type != ARPHRD_IEEE802154);

	FUNC2(&sdata->sec_mtx);
}