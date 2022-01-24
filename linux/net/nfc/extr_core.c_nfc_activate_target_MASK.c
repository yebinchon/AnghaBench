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
typedef  int /*<<< orphan*/  u32 ;
struct nfc_target {int dummy; } ;
struct nfc_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  check_pres_timer; int /*<<< orphan*/  shutting_down; TYPE_1__* ops; int /*<<< orphan*/  rf_mode; struct nfc_target* active_target; } ;
struct TYPE_2__ {int (* activate_target ) (struct nfc_dev*,struct nfc_target*,int /*<<< orphan*/ ) ;scalar_t__ check_presence; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int ENOTCONN ; 
 int /*<<< orphan*/  NFC_CHECK_PRES_FREQ_MS ; 
 int /*<<< orphan*/  NFC_RF_INITIATOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 struct nfc_target* FUNC6 (struct nfc_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct nfc_dev*,struct nfc_target*,int /*<<< orphan*/ ) ; 

int FUNC9(struct nfc_dev *dev, u32 target_idx, u32 protocol)
{
	int rc;
	struct nfc_target *target;

	FUNC7("dev_name=%s target_idx=%u protocol=%u\n",
		 FUNC0(&dev->dev), target_idx, protocol);

	FUNC2(&dev->dev);

	if (!FUNC1(&dev->dev)) {
		rc = -ENODEV;
		goto error;
	}

	if (dev->active_target) {
		rc = -EBUSY;
		goto error;
	}

	target = FUNC6(dev, target_idx);
	if (target == NULL) {
		rc = -ENOTCONN;
		goto error;
	}

	rc = dev->ops->activate_target(dev, target, protocol);
	if (!rc) {
		dev->active_target = target;
		dev->rf_mode = NFC_RF_INITIATOR;

		if (dev->ops->check_presence && !dev->shutting_down)
			FUNC4(&dev->check_pres_timer, jiffies +
				  FUNC5(NFC_CHECK_PRES_FREQ_MS));
	}

error:
	FUNC3(&dev->dev);
	return rc;
}