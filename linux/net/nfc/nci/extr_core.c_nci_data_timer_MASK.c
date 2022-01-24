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
struct timer_list {int dummy; } ;
struct nci_dev {int /*<<< orphan*/  rx_work; int /*<<< orphan*/  rx_wq; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  NCI_DATA_EXCHANGE_TO ; 
 int /*<<< orphan*/  data_timer ; 
 struct nci_dev* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct nci_dev* ndev ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct timer_list *t)
{
	struct nci_dev *ndev = FUNC0(ndev, t, data_timer);

	FUNC2(NCI_DATA_EXCHANGE_TO, &ndev->flags);
	FUNC1(ndev->rx_wq, &ndev->rx_work);
}