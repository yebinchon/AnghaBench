#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct hci_request {int err; int /*<<< orphan*/  cmd_q; struct hci_dev* hdev; } ;
struct TYPE_5__ {int /*<<< orphan*/  lock; } ;
struct hci_dev {int /*<<< orphan*/  cmd_work; int /*<<< orphan*/  workqueue; TYPE_2__ cmd_q; } ;
typedef  scalar_t__ hci_req_complete_t ;
typedef  scalar_t__ hci_req_complete_skb_t ;
struct TYPE_4__ {int /*<<< orphan*/  req_flags; scalar_t__ req_complete_skb; scalar_t__ req_complete; } ;
struct TYPE_6__ {TYPE_1__ hci; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int ENODATA ; 
 int /*<<< orphan*/  HCI_REQ_SKB ; 
 TYPE_3__* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC10(struct hci_request *req, hci_req_complete_t complete,
		   hci_req_complete_skb_t complete_skb)
{
	struct hci_dev *hdev = req->hdev;
	struct sk_buff *skb;
	unsigned long flags;

	FUNC0("length %u", FUNC5(&req->cmd_q));

	/* If an error occurred during request building, remove all HCI
	 * commands queued on the HCI request queue.
	 */
	if (req->err) {
		FUNC6(&req->cmd_q);
		return req->err;
	}

	/* Do not allow empty requests */
	if (FUNC4(&req->cmd_q))
		return -ENODATA;

	skb = FUNC3(&req->cmd_q);
	if (complete) {
		FUNC1(skb)->hci.req_complete = complete;
	} else if (complete_skb) {
		FUNC1(skb)->hci.req_complete_skb = complete_skb;
		FUNC1(skb)->hci.req_flags |= HCI_REQ_SKB;
	}

	FUNC8(&hdev->cmd_q.lock, flags);
	FUNC7(&req->cmd_q, &hdev->cmd_q);
	FUNC9(&hdev->cmd_q.lock, flags);

	FUNC2(hdev->workqueue, &hdev->cmd_work);

	return 0;
}