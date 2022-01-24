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
struct nci_dev {int /*<<< orphan*/  rx_work; int /*<<< orphan*/  rx_wq; int /*<<< orphan*/  rx_q; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  NCI_INIT ; 
 int /*<<< orphan*/  NCI_UP ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC5(struct nci_dev *ndev, struct sk_buff *skb)
{
	FUNC1("len %d\n", skb->len);

	if (!ndev || (!FUNC4(NCI_UP, &ndev->flags) &&
	    !FUNC4(NCI_INIT, &ndev->flags))) {
		FUNC0(skb);
		return -ENXIO;
	}

	/* Queue frame for rx worker thread */
	FUNC3(&ndev->rx_q, skb);
	FUNC2(ndev->rx_wq, &ndev->rx_work);

	return 0;
}