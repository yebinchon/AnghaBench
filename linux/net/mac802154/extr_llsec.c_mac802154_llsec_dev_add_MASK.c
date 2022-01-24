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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct ieee802154_llsec_device {int /*<<< orphan*/  list; int /*<<< orphan*/  short_addr; int /*<<< orphan*/  keys; int /*<<< orphan*/  hwaddr; int /*<<< orphan*/  pan_id; } ;
struct mac802154_llsec_device {struct ieee802154_llsec_device dev; int /*<<< orphan*/  bucket_hw; int /*<<< orphan*/  bucket_s; int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  devices; } ;
struct mac802154_llsec {TYPE_1__ table; int /*<<< orphan*/  devices_hw; int /*<<< orphan*/  devices_short; } ;
typedef  int /*<<< orphan*/  hwkey ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EEXIST ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IEEE802154_ADDR_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct mac802154_llsec_device* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct mac802154_llsec*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct mac802154_llsec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

int FUNC12(struct mac802154_llsec *sec,
			    const struct ieee802154_llsec_device *dev)
{
	struct mac802154_llsec_device *entry;
	u32 skey = FUNC9(dev->short_addr, dev->pan_id);
	u64 hwkey = FUNC8(dev->hwaddr);

	FUNC0(sizeof(hwkey) != IEEE802154_ADDR_LEN);

	if ((FUNC10(dev->short_addr) &&
	     FUNC7(sec, dev->short_addr, dev->pan_id)) ||
	     FUNC6(sec, dev->hwaddr))
		return -EEXIST;

	entry = FUNC4(sizeof(*entry), GFP_KERNEL);
	if (!entry)
		return -ENOMEM;

	entry->dev = *dev;
	FUNC11(&entry->lock);
	FUNC2(&entry->dev.keys);

	if (FUNC10(dev->short_addr))
		FUNC3(sec->devices_short, &entry->bucket_s, skey);
	else
		FUNC1(&entry->bucket_s);

	FUNC3(sec->devices_hw, &entry->bucket_hw, hwkey);
	FUNC5(&entry->dev.list, &sec->table.devices);

	return 0;
}