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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int dummy; } ;
struct hci_dev {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENETDOWN ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCI_UP ; 
 struct sk_buff* FUNC1 (struct hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

struct sk_buff *FUNC6(struct hci_dev *hdev, u16 opcode, u32 plen,
			     const void *param, u32 timeout)
{
	struct sk_buff *skb;

	if (!FUNC5(HCI_UP, &hdev->flags))
		return FUNC0(-ENETDOWN);

	FUNC2(hdev, "opcode 0x%4.4x plen %d", opcode, plen);

	FUNC3(hdev);
	skb = FUNC1(hdev, opcode, plen, param, timeout);
	FUNC4(hdev);

	return skb;
}