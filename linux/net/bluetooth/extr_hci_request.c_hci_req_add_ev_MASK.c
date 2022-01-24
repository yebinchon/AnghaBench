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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int dummy; } ;
struct hci_request {int err; int /*<<< orphan*/  cmd_q; struct hci_dev* hdev; } ;
struct hci_dev {int /*<<< orphan*/  name; } ;
struct TYPE_3__ {int /*<<< orphan*/  req_event; int /*<<< orphan*/  req_flags; } ;
struct TYPE_4__ {TYPE_1__ hci; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HCI_REQ_START ; 
 TYPE_2__* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*,char*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC3 (struct hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct sk_buff*) ; 

void FUNC6(struct hci_request *req, u16 opcode, u32 plen,
		    const void *param, u8 event)
{
	struct hci_dev *hdev = req->hdev;
	struct sk_buff *skb;

	FUNC0("%s opcode 0x%4.4x plen %d", hdev->name, opcode, plen);

	/* If an error occurred during request building, there is no point in
	 * queueing the HCI command. We can simply return.
	 */
	if (req->err)
		return;

	skb = FUNC3(hdev, opcode, plen, param);
	if (!skb) {
		FUNC2(hdev, "no memory for command (opcode 0x%4.4x)",
			   opcode);
		req->err = -ENOMEM;
		return;
	}

	if (FUNC4(&req->cmd_q))
		FUNC1(skb)->hci.req_flags |= HCI_REQ_START;

	FUNC1(skb)->hci.req_event = event;

	FUNC5(&req->cmd_q, skb);
}