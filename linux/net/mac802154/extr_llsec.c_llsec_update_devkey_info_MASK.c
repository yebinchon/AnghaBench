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
typedef  scalar_t__ u32 ;
struct TYPE_3__ {scalar_t__ frame_counter; } ;
struct mac802154_llsec_device_key {TYPE_1__ devkey; } ;
struct TYPE_4__ {scalar_t__ key_mode; scalar_t__ frame_counter; } ;
struct mac802154_llsec_device {int /*<<< orphan*/  lock; TYPE_2__ dev; } ;
struct ieee802154_llsec_key_id {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 scalar_t__ IEEE802154_LLSEC_DEVKEY_RECORD ; 
 scalar_t__ IEEE802154_LLSEC_DEVKEY_RESTRICT ; 
 struct mac802154_llsec_device_key* FUNC0 (struct mac802154_llsec_device*,struct ieee802154_llsec_key_id const*) ; 
 int FUNC1 (struct mac802154_llsec_device*,struct ieee802154_llsec_key_id const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(struct mac802154_llsec_device *dev,
			 const struct ieee802154_llsec_key_id *in_key,
			 u32 frame_counter)
{
	struct mac802154_llsec_device_key *devkey = NULL;

	if (dev->dev.key_mode == IEEE802154_LLSEC_DEVKEY_RESTRICT) {
		devkey = FUNC0(dev, in_key);
		if (!devkey)
			return -ENOENT;
	}

	if (dev->dev.key_mode == IEEE802154_LLSEC_DEVKEY_RECORD) {
		int rc = FUNC1(dev, in_key);

		if (rc < 0)
			return rc;
	}

	FUNC2(&dev->lock);

	if ((!devkey && frame_counter < dev->dev.frame_counter) ||
	    (devkey && frame_counter < devkey->devkey.frame_counter)) {
		FUNC3(&dev->lock);
		return -EINVAL;
	}

	if (devkey)
		devkey->devkey.frame_counter = frame_counter + 1;
	else
		dev->dev.frame_counter = frame_counter + 1;

	FUNC3(&dev->lock);

	return 0;
}