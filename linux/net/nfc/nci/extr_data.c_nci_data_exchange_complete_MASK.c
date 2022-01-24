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
struct nci_dev {int /*<<< orphan*/  flags; int /*<<< orphan*/  data_timer; } ;
struct nci_conn_info {void* data_exchange_cb_context; int /*<<< orphan*/  (* data_exchange_cb ) (void*,struct sk_buff*,int) ;} ;
typedef  int /*<<< orphan*/  (* data_exchange_cb_t ) (void*,struct sk_buff*,int) ;
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  NCI_DATA_EXCHANGE ; 
 int /*<<< orphan*/  NCI_DATA_EXCHANGE_TO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct nci_conn_info* FUNC3 (struct nci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

void FUNC6(struct nci_dev *ndev, struct sk_buff *skb,
				__u8 conn_id, int err)
{
	struct nci_conn_info    *conn_info;
	data_exchange_cb_t cb;
	void *cb_context;

	conn_info = FUNC3(ndev, conn_id);
	if (!conn_info) {
		FUNC2(skb);
		goto exit;
	}

	cb = conn_info->data_exchange_cb;
	cb_context = conn_info->data_exchange_cb_context;

	FUNC4("len %d, err %d\n", skb ? skb->len : 0, err);

	/* data exchange is complete, stop the data timer */
	FUNC1(&ndev->data_timer);
	FUNC0(NCI_DATA_EXCHANGE_TO, &ndev->flags);

	if (cb) {
		/* forward skb to nfc core */
		cb(cb_context, skb, err);
	} else if (skb) {
		FUNC5("no rx callback, dropping rx data...\n");

		/* no waiting callback, free skb */
		FUNC2(skb);
	}

exit:
	FUNC0(NCI_DATA_EXCHANGE, &ndev->flags);
}