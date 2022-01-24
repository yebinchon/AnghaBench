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
struct sk_buff {scalar_t__* data; } ;
struct nfc_digital_dev {scalar_t__ atn_count; } ;

/* Variables and functions */
 scalar_t__ DIGITAL_CMD_PSL_REQ ; 
 scalar_t__ DIGITAL_NFC_DEP_NFCA_SOD_SB ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfc_digital_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfc_digital_dev*,void*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfc_digital_dev*,void*,struct sk_buff*) ; 

__attribute__((used)) static void FUNC4(struct nfc_digital_dev *ddev,
					     void *arg, struct sk_buff *resp)
{
	int offset;

	if (FUNC0(resp)) {
		FUNC1(ddev);
		return;
	}

	offset = 2;
	if (resp->data[0] == DIGITAL_NFC_DEP_NFCA_SOD_SB)
		offset++;

	ddev->atn_count = 0;

	if (resp->data[offset] == DIGITAL_CMD_PSL_REQ)
		FUNC3(ddev, arg, resp);
	else
		FUNC2(ddev, arg, resp);
}