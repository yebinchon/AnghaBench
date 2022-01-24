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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int dummy; } ;
struct hci_request {int dummy; } ;
struct hci_dev {int req_status; int req_result; int /*<<< orphan*/  name; struct sk_buff* req_skb; int /*<<< orphan*/  req_wait_q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 int EINTR ; 
 int ENODATA ; 
 int ERESTARTSYS ; 
 struct sk_buff* FUNC1 (int) ; 
 int ETIMEDOUT ; 
#define  HCI_REQ_CANCELED 129 
#define  HCI_REQ_DONE 128 
 int HCI_REQ_PEND ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_request*,struct hci_dev*) ; 
 int FUNC5 (struct hci_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hci_req_sync_complete ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

struct sk_buff *FUNC8(struct hci_dev *hdev, u16 opcode, u32 plen,
				  const void *param, u8 event, u32 timeout)
{
	struct hci_request req;
	struct sk_buff *skb;
	int err = 0;

	FUNC0("%s", hdev->name);

	FUNC4(&req, hdev);

	FUNC3(&req, opcode, plen, param, event);

	hdev->req_status = HCI_REQ_PEND;

	err = FUNC5(&req, hci_req_sync_complete);
	if (err < 0)
		return FUNC1(err);

	err = FUNC7(hdev->req_wait_q,
			hdev->req_status != HCI_REQ_PEND, timeout);

	if (err == -ERESTARTSYS)
		return FUNC1(-EINTR);

	switch (hdev->req_status) {
	case HCI_REQ_DONE:
		err = -FUNC2(hdev->req_result);
		break;

	case HCI_REQ_CANCELED:
		err = -hdev->req_result;
		break;

	default:
		err = -ETIMEDOUT;
		break;
	}

	hdev->req_status = hdev->req_result = 0;
	skb = hdev->req_skb;
	hdev->req_skb = NULL;

	FUNC0("%s end: err %d", hdev->name, err);

	if (err < 0) {
		FUNC6(skb);
		return FUNC1(err);
	}

	if (!skb)
		return FUNC1(-ENODATA);

	return skb;
}