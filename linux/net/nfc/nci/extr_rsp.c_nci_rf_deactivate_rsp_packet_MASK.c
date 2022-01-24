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
struct sk_buff {scalar_t__* data; } ;
struct nci_dev {int /*<<< orphan*/  state; } ;
typedef  scalar_t__ __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  NCI_IDLE ; 
 scalar_t__ NCI_POLL_ACTIVE ; 
 scalar_t__ NCI_STATUS_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct nci_dev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct nci_dev *ndev,
					 struct sk_buff *skb)
{
	__u8 status = skb->data[0];

	FUNC4("status 0x%x\n", status);

	/* If target was active, complete the request only in deactivate_ntf */
	if ((status != NCI_STATUS_OK) ||
	    (FUNC0(&ndev->state) != NCI_POLL_ACTIVE)) {
		FUNC2(ndev);
		FUNC1(&ndev->state, NCI_IDLE);
		FUNC3(ndev, status);
	}
}