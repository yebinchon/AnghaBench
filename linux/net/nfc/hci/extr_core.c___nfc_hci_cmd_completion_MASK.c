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
struct sk_buff {int dummy; } ;
struct nfc_hci_dev {int /*<<< orphan*/  msg_tx_work; TYPE_1__* cmd_pending_msg; int /*<<< orphan*/  cmd_timer; } ;
struct TYPE_2__ {int /*<<< orphan*/  cb_context; int /*<<< orphan*/  (* cb ) (int /*<<< orphan*/ ,struct sk_buff*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct sk_buff*,int) ; 

__attribute__((used)) static void FUNC5(struct nfc_hci_dev *hdev, int err,
				     struct sk_buff *skb)
{
	FUNC0(&hdev->cmd_timer);

	if (hdev->cmd_pending_msg->cb)
		hdev->cmd_pending_msg->cb(hdev->cmd_pending_msg->cb_context,
					  skb, err);
	else
		FUNC2(skb);

	FUNC1(hdev->cmd_pending_msg);
	hdev->cmd_pending_msg = NULL;

	FUNC3(&hdev->msg_tx_work);
}