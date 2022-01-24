#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ieee802154_llsec_key_id {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  list; struct ieee802154_llsec_key_id key_id; } ;
struct mac802154_llsec_device_key {TYPE_2__ devkey; } ;
struct TYPE_3__ {int /*<<< orphan*/  keys; } ;
struct mac802154_llsec_device {int /*<<< orphan*/  lock; TYPE_1__ dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct mac802154_llsec_device_key* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mac802154_llsec_device_key*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct mac802154_llsec_device_key* FUNC3 (struct mac802154_llsec_device*,struct ieee802154_llsec_key_id const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct mac802154_llsec_device *dev,
			   const struct ieee802154_llsec_key_id *in_key)
{
	struct mac802154_llsec_device_key *devkey;

	devkey = FUNC3(dev, in_key);

	if (!devkey) {
		struct mac802154_llsec_device_key *next;

		next = FUNC0(sizeof(*devkey), GFP_ATOMIC);
		if (!next)
			return -ENOMEM;

		next->devkey.key_id = *in_key;

		FUNC4(&dev->lock);

		devkey = FUNC3(dev, in_key);
		if (!devkey)
			FUNC2(&next->devkey.list, &dev->dev.keys);
		else
			FUNC1(next);

		FUNC5(&dev->lock);
	}

	return 0;
}