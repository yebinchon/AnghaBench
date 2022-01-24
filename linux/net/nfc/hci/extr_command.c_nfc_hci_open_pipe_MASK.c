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
struct nfc_hci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFC_HCI_ANY_OPEN_PIPE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct nfc_hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sk_buff**) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct nfc_hci_dev *hdev, u8 pipe)
{
	struct sk_buff *skb;
	int r;

	FUNC2("pipe=%d\n", pipe);

	r = FUNC1(hdev, pipe, NFC_HCI_ANY_OPEN_PIPE,
				NULL, 0, &skb);
	if (r == 0) {
		/* dest host other than host controller will send
		 * number of pipes already open on this gate before
		 * execution. The number can be found in skb->data[0]
		 */
		FUNC0(skb);
	}

	return r;
}