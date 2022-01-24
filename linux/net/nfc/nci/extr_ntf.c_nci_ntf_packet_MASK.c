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
struct sk_buff {int /*<<< orphan*/  data; } ;
struct nci_dev {int dummy; } ;
typedef  int __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  ENOTSUPP ; 
 int /*<<< orphan*/  NCI_CTRL_HDR_SIZE ; 
 scalar_t__ NCI_GID_PROPRIETARY ; 
#define  NCI_OP_CORE_CONN_CREDITS_NTF 135 
#define  NCI_OP_CORE_GENERIC_ERROR_NTF 134 
#define  NCI_OP_CORE_INTF_ERROR_NTF 133 
#define  NCI_OP_NFCEE_DISCOVER_NTF 132 
#define  NCI_OP_RF_DEACTIVATE_NTF 131 
#define  NCI_OP_RF_DISCOVER_NTF 130 
#define  NCI_OP_RF_INTF_ACTIVATED_NTF 129 
#define  NCI_OP_RF_NFCEE_ACTION_NTF 128 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct nci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct nci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct nci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct nci_dev*,int,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct nci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct nci_dev*,struct sk_buff*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct nci_dev*,int,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct nci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 (struct nci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (struct nci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*,int /*<<< orphan*/ ) ; 

void FUNC19(struct nci_dev *ndev, struct sk_buff *skb)
{
	__u16 ntf_opcode = FUNC7(skb->data);

	FUNC16("NCI RX: MT=ntf, PBF=%d, GID=0x%x, OID=0x%x, plen=%d\n",
		 FUNC10(skb->data),
		 FUNC8(ntf_opcode),
		 FUNC9(ntf_opcode),
		 FUNC11(skb->data));

	/* strip the nci control header */
	FUNC18(skb, NCI_CTRL_HDR_SIZE);

	if (FUNC8(ntf_opcode) == NCI_GID_PROPRIETARY) {
		if (FUNC12(ndev, ntf_opcode, skb) == -ENOTSUPP) {
			FUNC17("unsupported ntf opcode 0x%x\n",
			       ntf_opcode);
		}

		goto end;
	}

	switch (ntf_opcode) {
	case NCI_OP_CORE_CONN_CREDITS_NTF:
		FUNC1(ndev, skb);
		break;

	case NCI_OP_CORE_GENERIC_ERROR_NTF:
		FUNC3(ndev, skb);
		break;

	case NCI_OP_CORE_INTF_ERROR_NTF:
		FUNC2(ndev, skb);
		break;

	case NCI_OP_RF_DISCOVER_NTF:
		FUNC14(ndev, skb);
		break;

	case NCI_OP_RF_INTF_ACTIVATED_NTF:
		FUNC15(ndev, skb);
		break;

	case NCI_OP_RF_DEACTIVATE_NTF:
		FUNC13(ndev, skb);
		break;

	case NCI_OP_NFCEE_DISCOVER_NTF:
		FUNC6(ndev, skb);
		break;

	case NCI_OP_RF_NFCEE_ACTION_NTF:
		FUNC5(ndev, skb);
		break;

	default:
		FUNC17("unknown ntf opcode 0x%x\n", ntf_opcode);
		break;
	}

	FUNC4(ndev, ntf_opcode, skb);
end:
	FUNC0(skb);
}