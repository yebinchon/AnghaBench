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
struct sk_buff {scalar_t__ data; } ;
struct nci_dev {int /*<<< orphan*/  flags; } ;
struct nci_core_intf_error_ntf {int /*<<< orphan*/  conn_id; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  NCI_DATA_EXCHANGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nci_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct nci_dev *ndev,
						struct sk_buff *skb)
{
	struct nci_core_intf_error_ntf *ntf = (void *) skb->data;

	ntf->conn_id = FUNC0(&ntf->conn_id);

	FUNC2("status 0x%x, conn_id %d\n", ntf->status, ntf->conn_id);

	/* complete the data exchange transaction, if exists */
	if (FUNC3(NCI_DATA_EXCHANGE, &ndev->flags))
		FUNC1(ndev, NULL, ntf->conn_id, -EIO);
}