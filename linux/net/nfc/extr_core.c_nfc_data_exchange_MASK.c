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
struct sk_buff {int /*<<< orphan*/  len; } ;
struct nfc_dev {scalar_t__ rf_mode; int /*<<< orphan*/  dev; TYPE_1__* ops; int /*<<< orphan*/  check_pres_timer; int /*<<< orphan*/  shutting_down; TYPE_2__* active_target; } ;
typedef  int /*<<< orphan*/  data_exchange_cb_t ;
struct TYPE_4__ {scalar_t__ idx; } ;
struct TYPE_3__ {int (* im_transceive ) (struct nfc_dev*,TYPE_2__*,struct sk_buff*,int /*<<< orphan*/ ,void*) ;int (* tm_send ) (struct nfc_dev*,struct sk_buff*) ;scalar_t__ check_presence; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int ENODEV ; 
 int ENOTCONN ; 
 int /*<<< orphan*/  NFC_CHECK_PRES_FREQ_MS ; 
 scalar_t__ NFC_RF_INITIATOR ; 
 scalar_t__ NFC_RF_TARGET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct nfc_dev*,TYPE_2__*,struct sk_buff*,int /*<<< orphan*/ ,void*) ; 
 int FUNC10 (struct nfc_dev*,struct sk_buff*) ; 

int FUNC11(struct nfc_dev *dev, u32 target_idx, struct sk_buff *skb,
		      data_exchange_cb_t cb, void *cb_context)
{
	int rc;

	FUNC8("dev_name=%s target_idx=%u skb->len=%u\n",
		 FUNC1(&dev->dev), target_idx, skb->len);

	FUNC3(&dev->dev);

	if (!FUNC2(&dev->dev)) {
		rc = -ENODEV;
		FUNC5(skb);
		goto error;
	}

	if (dev->rf_mode == NFC_RF_INITIATOR && dev->active_target != NULL) {
		if (dev->active_target->idx != target_idx) {
			rc = -EADDRNOTAVAIL;
			FUNC5(skb);
			goto error;
		}

		if (dev->ops->check_presence)
			FUNC0(&dev->check_pres_timer);

		rc = dev->ops->im_transceive(dev, dev->active_target, skb, cb,
					     cb_context);

		if (!rc && dev->ops->check_presence && !dev->shutting_down)
			FUNC6(&dev->check_pres_timer, jiffies +
				  FUNC7(NFC_CHECK_PRES_FREQ_MS));
	} else if (dev->rf_mode == NFC_RF_TARGET && dev->ops->tm_send != NULL) {
		rc = dev->ops->tm_send(dev, skb);
	} else {
		rc = -ENOTCONN;
		FUNC5(skb);
		goto error;
	}


error:
	FUNC4(&dev->dev);
	return rc;
}