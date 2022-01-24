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
struct sk_buff {int dummy; } ;
struct hci_dev {int /*<<< orphan*/  cmd_work; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  cmd_q; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  __u32 ;
typedef  int /*<<< orphan*/  __u16 ;
struct TYPE_3__ {int /*<<< orphan*/  req_flags; } ;
struct TYPE_4__ {TYPE_1__ hci; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HCI_REQ_START ; 
 TYPE_2__* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*,char*) ; 
 struct sk_buff* FUNC3 (struct hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct sk_buff*) ; 

int FUNC6(struct hci_dev *hdev, __u16 opcode, __u32 plen,
		 const void *param)
{
	struct sk_buff *skb;

	FUNC0("%s opcode 0x%4.4x plen %d", hdev->name, opcode, plen);

	skb = FUNC3(hdev, opcode, plen, param);
	if (!skb) {
		FUNC2(hdev, "no memory for command");
		return -ENOMEM;
	}

	/* Stand-alone HCI commands must be flagged as
	 * single-command requests.
	 */
	FUNC1(skb)->hci.req_flags |= HCI_REQ_START;

	FUNC5(&hdev->cmd_q, skb);
	FUNC4(hdev->workqueue, &hdev->cmd_work);

	return 0;
}