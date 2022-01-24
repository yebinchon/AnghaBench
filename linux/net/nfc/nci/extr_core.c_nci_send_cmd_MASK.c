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
struct sk_buff {int dummy; } ;
struct nci_dev {int /*<<< orphan*/  cmd_work; int /*<<< orphan*/  cmd_wq; int /*<<< orphan*/  cmd_q; } ;
struct nci_ctrl_hdr {scalar_t__ plen; int /*<<< orphan*/  oid; int /*<<< orphan*/  gid; } ;
typedef  scalar_t__ __u8 ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ NCI_CTRL_HDR_SIZE ; 
 int /*<<< orphan*/  NCI_MT_CMD_PKT ; 
 int /*<<< orphan*/  NCI_PBF_LAST ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC4 (struct nci_dev*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct nci_ctrl_hdr* FUNC8 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct sk_buff*) ; 

int FUNC11(struct nci_dev *ndev, __u16 opcode, __u8 plen, void *payload)
{
	struct nci_ctrl_hdr *hdr;
	struct sk_buff *skb;

	FUNC5("opcode 0x%x, plen %d\n", opcode, plen);

	skb = FUNC4(ndev, (NCI_CTRL_HDR_SIZE + plen), GFP_KERNEL);
	if (!skb) {
		FUNC6("no memory for command\n");
		return -ENOMEM;
	}

	hdr = FUNC8(skb, NCI_CTRL_HDR_SIZE);
	hdr->gid = FUNC1(opcode);
	hdr->oid = FUNC2(opcode);
	hdr->plen = plen;

	FUNC0((__u8 *)hdr, NCI_MT_CMD_PKT);
	FUNC3((__u8 *)hdr, NCI_PBF_LAST);

	if (plen)
		FUNC9(skb, payload, plen);

	FUNC10(&ndev->cmd_q, skb);
	FUNC7(ndev->cmd_wq, &ndev->cmd_work);

	return 0;
}