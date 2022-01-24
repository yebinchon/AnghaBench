#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {scalar_t__* data; } ;
struct nci_dev {struct nci_conn_info* rf_conn_info; int /*<<< orphan*/  conn_info_list; TYPE_1__* nfc_dev; int /*<<< orphan*/  state; } ;
struct nci_conn_info {int /*<<< orphan*/  list; int /*<<< orphan*/  conn_id; } ;
typedef  scalar_t__ __u8 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NCI_DISCOVERY ; 
 int /*<<< orphan*/  NCI_STATIC_RF_CONN_ID ; 
 scalar_t__ NCI_STATUS_OK ; 
 scalar_t__ NCI_STATUS_REJECTED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct nci_conn_info* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct nci_dev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct nci_dev *ndev, struct sk_buff *skb)
{
	struct nci_conn_info    *conn_info;
	__u8 status = skb->data[0];

	FUNC5("status 0x%x\n", status);

	if (status == NCI_STATUS_OK) {
		FUNC1(&ndev->state, NCI_DISCOVERY);

		conn_info = ndev->rf_conn_info;
		if (!conn_info) {
			conn_info = FUNC2(&ndev->nfc_dev->dev,
						 sizeof(struct nci_conn_info),
						 GFP_KERNEL);
			if (!conn_info) {
				status = NCI_STATUS_REJECTED;
				goto exit;
			}
			conn_info->conn_id = NCI_STATIC_RF_CONN_ID;
			FUNC0(&conn_info->list);
			FUNC3(&conn_info->list, &ndev->conn_info_list);
			ndev->rf_conn_info = conn_info;
		}
	}

exit:
	FUNC4(ndev, status);
}