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
struct sk_buff {int dummy; } ;
struct nfc_dev {int /*<<< orphan*/  rf_mode; int /*<<< orphan*/  dev_up; int /*<<< orphan*/  supported_protocols; int /*<<< orphan*/  idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFC_ATTR_DEVICE_INDEX ; 
 int /*<<< orphan*/  NFC_ATTR_DEVICE_NAME ; 
 int /*<<< orphan*/  NFC_ATTR_DEVICE_POWERED ; 
 int /*<<< orphan*/  NFC_ATTR_PROTOCOLS ; 
 int /*<<< orphan*/  NFC_ATTR_RF_MODE ; 
 int /*<<< orphan*/  FUNC0 (struct nfc_dev*) ; 
 scalar_t__ FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct nfc_dev *dev, struct sk_buff *msg)
{
	if (FUNC1(msg, NFC_ATTR_DEVICE_NAME, FUNC0(dev)) ||
	    FUNC2(msg, NFC_ATTR_DEVICE_INDEX, dev->idx) ||
	    FUNC2(msg, NFC_ATTR_PROTOCOLS, dev->supported_protocols) ||
	    FUNC3(msg, NFC_ATTR_DEVICE_POWERED, dev->dev_up) ||
	    FUNC3(msg, NFC_ATTR_RF_MODE, dev->rf_mode))
		return -1;
	return 0;
}