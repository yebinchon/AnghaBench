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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int dummy; } ;
struct nfc_hci_dev {int /*<<< orphan*/  msg_tx_mutex; int /*<<< orphan*/ * cmd_pending_msg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfc_hci_dev*,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct nfc_hci_dev *hdev, u8 result,
			   struct sk_buff *skb)
{
	FUNC2(&hdev->msg_tx_mutex);

	if (hdev->cmd_pending_msg == NULL) {
		FUNC1(skb);
		goto exit;
	}

	FUNC0(hdev, FUNC4(result), skb);

exit:
	FUNC3(&hdev->msg_tx_mutex);
}