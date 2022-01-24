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
struct TYPE_2__ {int /*<<< orphan*/  list; } ;
struct mac802154_llsec_device_key {TYPE_1__ devkey; } ;
struct mac802154_llsec_device {int dummy; } ;
struct mac802154_llsec {int dummy; } ;
struct ieee802154_llsec_device_key {int /*<<< orphan*/  key_id; } ;
typedef  int /*<<< orphan*/  __le64 ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct mac802154_llsec_device_key*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct mac802154_llsec_device* FUNC2 (struct mac802154_llsec*,int /*<<< orphan*/ ) ; 
 struct mac802154_llsec_device_key* FUNC3 (struct mac802154_llsec_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rcu ; 

int FUNC4(struct mac802154_llsec *sec,
			       __le64 dev_addr,
			       const struct ieee802154_llsec_device_key *key)
{
	struct mac802154_llsec_device *dev;
	struct mac802154_llsec_device_key *devkey;

	dev = FUNC2(sec, dev_addr);

	if (!dev)
		return -ENOENT;

	devkey = FUNC3(dev, &key->key_id);
	if (!devkey)
		return -ENOENT;

	FUNC1(&devkey->devkey.list);
	FUNC0(devkey, rcu);
	return 0;
}