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
struct nci_dev {int /*<<< orphan*/  cur_conn_id; } ;
struct nci_conn_info {struct sk_buff* rx_skb; } ;

/* Variables and functions */
 int /*<<< orphan*/  NCI_STATUS_OK ; 
 int /*<<< orphan*/  NCI_STATUS_REJECTED ; 
 struct nci_conn_info* FUNC0 (struct nci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nci_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void *context, struct sk_buff *skb, int err)
{
	struct nci_dev *ndev = (struct nci_dev *)context;
	struct nci_conn_info    *conn_info;

	conn_info = FUNC0(ndev, ndev->cur_conn_id);
	if (!conn_info) {
		FUNC1(ndev, NCI_STATUS_REJECTED);
		return;
	}

	conn_info->rx_skb = skb;

	FUNC1(ndev, NCI_STATUS_OK);
}