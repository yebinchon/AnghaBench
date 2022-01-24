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
struct sk_buff {int len; int /*<<< orphan*/ * data; } ;
struct nci_dev {scalar_t__ target_active_prot; } ;
struct nci_conn_info {int dummy; } ;
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  NCI_DATA_HDR_SIZE ; 
 scalar_t__ NFC_PROTO_FELICA ; 
 scalar_t__ NFC_PROTO_ISO15693 ; 
 scalar_t__ NFC_PROTO_JEWEL ; 
 scalar_t__ NFC_PROTO_MIFARE ; 
 int /*<<< orphan*/  FUNC0 (struct nci_dev*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct nci_conn_info* FUNC2 (struct nci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 

void FUNC9(struct nci_dev *ndev, struct sk_buff *skb)
{
	__u8 pbf = FUNC3(skb->data);
	__u8 status = 0;
	__u8 conn_id = FUNC1(skb->data);
	struct nci_conn_info    *conn_info;

	FUNC6("len %d\n", skb->len);

	FUNC6("NCI RX: MT=data, PBF=%d, conn_id=%d, plen=%d\n",
		 FUNC3(skb->data),
		 FUNC1(skb->data),
		 FUNC4(skb->data));

	conn_info = FUNC2(ndev, FUNC1(skb->data));
	if (!conn_info)
		return;

	/* strip the nci data header */
	FUNC7(skb, NCI_DATA_HDR_SIZE);

	if (ndev->target_active_prot == NFC_PROTO_MIFARE ||
	    ndev->target_active_prot == NFC_PROTO_JEWEL ||
	    ndev->target_active_prot == NFC_PROTO_FELICA ||
	    ndev->target_active_prot == NFC_PROTO_ISO15693) {
		/* frame I/F => remove the status byte */
		FUNC6("frame I/F => remove the status byte\n");
		status = skb->data[skb->len - 1];
		FUNC8(skb, (skb->len - 1));
	}

	FUNC0(ndev, skb, pbf, conn_id, FUNC5(status));
}