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
struct nci_dev {int /*<<< orphan*/  cmd_work; int /*<<< orphan*/  cmd_wq; int /*<<< orphan*/  cmd_q; int /*<<< orphan*/  cmd_cnt; int /*<<< orphan*/  cmd_timer; } ;
typedef  int __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  ENOTSUPP ; 
 int /*<<< orphan*/  NCI_CTRL_HDR_SIZE ; 
 scalar_t__ NCI_GID_PROPRIETARY ; 
#define  NCI_OP_CORE_CONN_CLOSE_RSP 138 
#define  NCI_OP_CORE_CONN_CREATE_RSP 137 
#define  NCI_OP_CORE_INIT_RSP 136 
#define  NCI_OP_CORE_RESET_RSP 135 
#define  NCI_OP_CORE_SET_CONFIG_RSP 134 
#define  NCI_OP_NFCEE_DISCOVER_RSP 133 
#define  NCI_OP_NFCEE_MODE_SET_RSP 132 
#define  NCI_OP_RF_DEACTIVATE_RSP 131 
#define  NCI_OP_RF_DISCOVER_MAP_RSP 130 
#define  NCI_OP_RF_DISCOVER_RSP 129 
#define  NCI_OP_RF_DISCOVER_SELECT_RSP 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct nci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct nci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct nci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct nci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct nci_dev*,int,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct nci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct nci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct nci_dev*,struct sk_buff*) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct nci_dev*,int,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC17 (struct nci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC18 (struct nci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC19 (struct nci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC20 (struct nci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC21 (char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (char*,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 

void FUNC26(struct nci_dev *ndev, struct sk_buff *skb)
{
	__u16 rsp_opcode = FUNC11(skb->data);

	/* we got a rsp, stop the cmd timer */
	FUNC1(&ndev->cmd_timer);

	FUNC21("NCI RX: MT=rsp, PBF=%d, GID=0x%x, OID=0x%x, plen=%d\n",
		 FUNC14(skb->data),
		 FUNC12(rsp_opcode),
		 FUNC13(rsp_opcode),
		 FUNC15(skb->data));

	/* strip the nci control header */
	FUNC24(skb, NCI_CTRL_HDR_SIZE);

	if (FUNC12(rsp_opcode) == NCI_GID_PROPRIETARY) {
		if (FUNC16(ndev, rsp_opcode, skb) == -ENOTSUPP) {
			FUNC22("unsupported rsp opcode 0x%x\n",
			       rsp_opcode);
		}

		goto end;
	}

	switch (rsp_opcode) {
	case NCI_OP_CORE_RESET_RSP:
		FUNC6(ndev, skb);
		break;

	case NCI_OP_CORE_INIT_RSP:
		FUNC5(ndev, skb);
		break;

	case NCI_OP_CORE_SET_CONFIG_RSP:
		FUNC8(ndev, skb);
		break;

	case NCI_OP_CORE_CONN_CREATE_RSP:
		FUNC4(ndev, skb);
		break;

	case NCI_OP_CORE_CONN_CLOSE_RSP:
		FUNC3(ndev, skb);
		break;

	case NCI_OP_RF_DISCOVER_MAP_RSP:
		FUNC18(ndev, skb);
		break;

	case NCI_OP_RF_DISCOVER_RSP:
		FUNC19(ndev, skb);
		break;

	case NCI_OP_RF_DISCOVER_SELECT_RSP:
		FUNC20(ndev, skb);
		break;

	case NCI_OP_RF_DEACTIVATE_RSP:
		FUNC17(ndev, skb);
		break;

	case NCI_OP_NFCEE_DISCOVER_RSP:
		FUNC9(ndev, skb);
		break;

	case NCI_OP_NFCEE_MODE_SET_RSP:
		FUNC10(ndev, skb);
		break;

	default:
		FUNC22("unknown rsp opcode 0x%x\n", rsp_opcode);
		break;
	}

	FUNC7(ndev, rsp_opcode, skb);
end:
	FUNC2(skb);

	/* trigger the next cmd */
	FUNC0(&ndev->cmd_cnt, 1);
	if (!FUNC25(&ndev->cmd_q))
		FUNC23(ndev->cmd_wq, &ndev->cmd_work);
}