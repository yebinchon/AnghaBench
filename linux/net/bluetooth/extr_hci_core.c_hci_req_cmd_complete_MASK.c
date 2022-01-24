#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u16 ;
struct sk_buff {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  lock; } ;
struct hci_dev {TYPE_3__ cmd_q; struct sk_buff* sent_cmd; int /*<<< orphan*/  flags; } ;
typedef  scalar_t__ hci_req_complete_t ;
typedef  int /*<<< orphan*/  hci_req_complete_skb_t ;
struct TYPE_5__ {int req_flags; scalar_t__ req_complete; int /*<<< orphan*/  req_complete_skb; } ;
struct TYPE_6__ {TYPE_1__ hci; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCI_CMD_PENDING ; 
 int /*<<< orphan*/  HCI_INIT ; 
 scalar_t__ HCI_OP_RESET ; 
 int HCI_REQ_SKB ; 
 int HCI_REQ_START ; 
 struct sk_buff* FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,struct sk_buff*) ; 
 TYPE_2__* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_dev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC12(struct hci_dev *hdev, u16 opcode, u8 status,
			  hci_req_complete_t *req_complete,
			  hci_req_complete_skb_t *req_complete_skb)
{
	struct sk_buff *skb;
	unsigned long flags;

	FUNC0("opcode 0x%04x status 0x%02x", opcode, status);

	/* If the completed command doesn't match the last one that was
	 * sent we need to do special handling of it.
	 */
	if (!FUNC7(hdev, opcode)) {
		/* Some CSR based controllers generate a spontaneous
		 * reset complete event during init and any pending
		 * command will never be completed. In such a case we
		 * need to resend whatever was the last sent
		 * command.
		 */
		if (FUNC11(HCI_INIT, &hdev->flags) && opcode == HCI_OP_RESET)
			FUNC6(hdev);

		return;
	}

	/* If we reach this point this event matches the last command sent */
	FUNC4(hdev, HCI_CMD_PENDING);

	/* If the command succeeded and there's still more commands in
	 * this request the request is not yet complete.
	 */
	if (!status && !FUNC5(hdev))
		return;

	/* If this was the last command in a request the complete
	 * callback would be found in hdev->sent_cmd instead of the
	 * command queue (hdev->cmd_q).
	 */
	if (FUNC3(hdev->sent_cmd)->hci.req_flags & HCI_REQ_SKB) {
		*req_complete_skb = FUNC3(hdev->sent_cmd)->hci.req_complete_skb;
		return;
	}

	if (FUNC3(hdev->sent_cmd)->hci.req_complete) {
		*req_complete = FUNC3(hdev->sent_cmd)->hci.req_complete;
		return;
	}

	/* Remove all pending commands belonging to this request */
	FUNC9(&hdev->cmd_q.lock, flags);
	while ((skb = FUNC1(&hdev->cmd_q))) {
		if (FUNC3(skb)->hci.req_flags & HCI_REQ_START) {
			FUNC2(&hdev->cmd_q, skb);
			break;
		}

		if (FUNC3(skb)->hci.req_flags & HCI_REQ_SKB)
			*req_complete_skb = FUNC3(skb)->hci.req_complete_skb;
		else
			*req_complete = FUNC3(skb)->hci.req_complete;
		FUNC8(skb);
	}
	FUNC10(&hdev->cmd_q.lock, flags);
}