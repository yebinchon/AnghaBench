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
struct hci_dev {int /*<<< orphan*/  cmd_q; } ;
struct TYPE_3__ {int req_flags; } ;
struct TYPE_4__ {TYPE_1__ hci; } ;

/* Variables and functions */
 int HCI_REQ_START ; 
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC2(struct hci_dev *hdev)
{
	struct sk_buff *skb;

	skb = FUNC1(&hdev->cmd_q);
	if (!skb)
		return true;

	return (FUNC0(skb)->hci.req_flags & HCI_REQ_START);
}