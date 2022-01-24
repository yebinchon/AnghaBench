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
typedef  int u8 ;
struct sk_buff {int dummy; } ;
struct nci_dev {int dummy; } ;

/* Variables and functions */
#define  NCI_HCI_HCP_COMMAND 130 
#define  NCI_HCI_HCP_EVENT 129 
#define  NCI_HCI_HCP_RESPONSE 128 
 int /*<<< orphan*/  NCI_STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct nci_dev*,int,int,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct nci_dev*,int,int,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct nci_dev*,int,int,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct nci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int) ; 

__attribute__((used)) static void FUNC6(struct nci_dev *ndev, u8 pipe,
				   u8 type, u8 instruction, struct sk_buff *skb)
{
	switch (type) {
	case NCI_HCI_HCP_RESPONSE:
		FUNC3(ndev, pipe, instruction, skb);
		break;
	case NCI_HCI_HCP_COMMAND:
		FUNC1(ndev, pipe, instruction, skb);
		break;
	case NCI_HCI_HCP_EVENT:
		FUNC2(ndev, pipe, instruction, skb);
		break;
	default:
		FUNC5("UNKNOWN MSG Type %d, instruction=%d\n",
		       type, instruction);
		FUNC0(skb);
		break;
	}

	FUNC4(ndev, NCI_STATUS_OK);
}