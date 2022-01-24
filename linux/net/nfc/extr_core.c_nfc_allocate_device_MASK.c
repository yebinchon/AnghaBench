#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct nfc_ops {scalar_t__ check_presence; int /*<<< orphan*/  im_transceive; int /*<<< orphan*/  deactivate_target; int /*<<< orphan*/  activate_target; int /*<<< orphan*/  stop_poll; int /*<<< orphan*/  start_poll; } ;
struct TYPE_3__ {int /*<<< orphan*/ * class; } ;
struct nfc_dev {int idx; int tx_headroom; int tx_tailroom; int targets_generation; int /*<<< orphan*/  check_pres_work; int /*<<< orphan*/  check_pres_timer; int /*<<< orphan*/  rf_mode; int /*<<< orphan*/  genl_data; int /*<<< orphan*/  secure_elements; scalar_t__ supported_protocols; struct nfc_ops* ops; TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NFC_RF_NONE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nfc_dev*) ; 
 struct nfc_dev* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfc_check_pres_timeout ; 
 int /*<<< orphan*/  nfc_check_pres_work ; 
 int /*<<< orphan*/  nfc_class ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nfc_index_ida ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct nfc_dev *FUNC9(struct nfc_ops *ops,
				    u32 supported_protocols,
				    int tx_headroom, int tx_tailroom)
{
	struct nfc_dev *dev;
	int rc;

	if (!ops->start_poll || !ops->stop_poll || !ops->activate_target ||
	    !ops->deactivate_target || !ops->im_transceive)
		return NULL;

	if (!supported_protocols)
		return NULL;

	dev = FUNC6(sizeof(struct nfc_dev), GFP_KERNEL);
	if (!dev)
		return NULL;

	rc = FUNC4(&nfc_index_ida, 0, 0, GFP_KERNEL);
	if (rc < 0)
		goto err_free_dev;
	dev->idx = rc;

	dev->dev.class = &nfc_class;
	FUNC2(&dev->dev, "nfc%d", dev->idx);
	FUNC3(&dev->dev);

	dev->ops = ops;
	dev->supported_protocols = supported_protocols;
	dev->tx_headroom = tx_headroom;
	dev->tx_tailroom = tx_tailroom;
	FUNC0(&dev->secure_elements);

	FUNC7(&dev->genl_data);

	dev->rf_mode = NFC_RF_NONE;

	/* first generation must not be 0 */
	dev->targets_generation = 1;

	if (ops->check_presence) {
		FUNC8(&dev->check_pres_timer, nfc_check_pres_timeout, 0);
		FUNC1(&dev->check_pres_work, nfc_check_pres_work);
	}

	return dev;

err_free_dev:
	FUNC5(dev);

	return NULL;
}