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
struct sk_buff {int /*<<< orphan*/  len; } ;
struct hci_dev {scalar_t__ sco_cnt; int /*<<< orphan*/  name; } ;
struct hci_conn {int /*<<< orphan*/  sent; int /*<<< orphan*/  data_q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct sk_buff*,...) ; 
 int /*<<< orphan*/  SCO_LINK ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 struct hci_conn* FUNC2 (struct hci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*,struct sk_buff*) ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct hci_dev *hdev)
{
	struct hci_conn *conn;
	struct sk_buff *skb;
	int quote;

	FUNC0("%s", hdev->name);

	if (!FUNC1(hdev, SCO_LINK))
		return;

	while (hdev->sco_cnt && (conn = FUNC2(hdev, SCO_LINK, &quote))) {
		while (quote-- && (skb = FUNC4(&conn->data_q))) {
			FUNC0("skb %p len %d", skb, skb->len);
			FUNC3(hdev, skb);

			conn->sent++;
			if (conn->sent == ~0)
				conn->sent = 0;
		}
	}
}