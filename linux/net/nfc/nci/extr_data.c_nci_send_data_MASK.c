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
struct sk_buff {scalar_t__ len; } ;
struct nci_dev {int /*<<< orphan*/  tx_work; int /*<<< orphan*/  tx_wq; int /*<<< orphan*/  cur_conn_id; int /*<<< orphan*/  tx_q; } ;
struct nci_conn_info {scalar_t__ max_pkt_payload_len; } ;
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 int EPROTO ; 
 int /*<<< orphan*/  NCI_PBF_LAST ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct nci_conn_info* FUNC1 (struct nci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nci_dev*,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct nci_dev*,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct sk_buff*) ; 

int FUNC8(struct nci_dev *ndev, __u8 conn_id, struct sk_buff *skb)
{
	struct nci_conn_info    *conn_info;
	int rc = 0;

	FUNC4("conn_id 0x%x, plen %d\n", conn_id, skb->len);

	conn_info = FUNC1(ndev, conn_id);
	if (!conn_info) {
		rc = -EPROTO;
		goto free_exit;
	}

	/* check if the packet need to be fragmented */
	if (skb->len <= conn_info->max_pkt_payload_len) {
		/* no need to fragment packet */
		FUNC2(ndev, conn_id, skb, NCI_PBF_LAST);

		FUNC7(&ndev->tx_q, skb);
	} else {
		/* fragment packet and queue the fragments */
		rc = FUNC3(ndev, conn_id, skb);
		if (rc) {
			FUNC5("failed to fragment tx data packet\n");
			goto free_exit;
		}
	}

	ndev->cur_conn_id = conn_id;
	FUNC6(ndev->tx_wq, &ndev->tx_work);

	goto exit;

free_exit:
	FUNC0(skb);

exit:
	return rc;
}