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
typedef  int /*<<< orphan*/  u8 ;
struct nfc_target {int dummy; } ;
struct nfc_dev {int dep_link_up; int /*<<< orphan*/  dev; int /*<<< orphan*/  rf_mode; struct nfc_target* active_target; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* dep_link_up ) (struct nfc_dev*,struct nfc_target*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ;} ;

/* Variables and functions */
 int EALREADY ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOTCONN ; 
 int EOPNOTSUPP ; 
 size_t NFC_MAX_GT_LEN ; 
 int /*<<< orphan*/  NFC_RF_INITIATOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct nfc_target* FUNC4 (struct nfc_dev*,int) ; 
 int /*<<< orphan*/ * FUNC5 (struct nfc_dev*,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct nfc_dev*,struct nfc_target*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 

int FUNC8(struct nfc_dev *dev, int target_index, u8 comm_mode)
{
	int rc = 0;
	u8 *gb;
	size_t gb_len;
	struct nfc_target *target;

	FUNC6("dev_name=%s comm %d\n", FUNC0(&dev->dev), comm_mode);

	if (!dev->ops->dep_link_up)
		return -EOPNOTSUPP;

	FUNC2(&dev->dev);

	if (!FUNC1(&dev->dev)) {
		rc = -ENODEV;
		goto error;
	}

	if (dev->dep_link_up == true) {
		rc = -EALREADY;
		goto error;
	}

	gb = FUNC5(dev, &gb_len);
	if (gb_len > NFC_MAX_GT_LEN) {
		rc = -EINVAL;
		goto error;
	}

	target = FUNC4(dev, target_index);
	if (target == NULL) {
		rc = -ENOTCONN;
		goto error;
	}

	rc = dev->ops->dep_link_up(dev, target, comm_mode, gb, gb_len);
	if (!rc) {
		dev->active_target = target;
		dev->rf_mode = NFC_RF_INITIATOR;
	}

error:
	FUNC3(&dev->dev);
	return rc;
}