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
typedef  unsigned long u8 ;
struct sk_buff {int dummy; } ;
struct nfc_digital_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  NFC_DIGITAL_CONFIG_RF_TECH ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfc_digital_dev*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct nfc_digital_dev*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  digital_tg_recv_dep_req ; 
 int /*<<< orphan*/  FUNC4 (struct nfc_digital_dev*,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct nfc_digital_dev *ddev,
					     void *arg, struct sk_buff *resp)
{
	u8 rf_tech = (unsigned long)arg;

	if (FUNC0(resp))
		return;

	FUNC4(ddev, rf_tech);

	FUNC2(ddev, NFC_DIGITAL_CONFIG_RF_TECH, rf_tech);

	FUNC3(ddev, 1500, digital_tg_recv_dep_req, NULL);

	FUNC1(resp);
}