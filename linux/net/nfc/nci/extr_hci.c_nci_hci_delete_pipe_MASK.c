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
typedef  int /*<<< orphan*/  u8 ;
struct nci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NCI_HCI_ADMIN_GATE ; 
 int /*<<< orphan*/  NCI_HCI_ADM_DELETE_PIPE ; 
 int FUNC0 (struct nci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int FUNC2(struct nci_dev *ndev, u8 pipe)
{
	FUNC1("\n");

	return FUNC0(ndev, NCI_HCI_ADMIN_GATE,
				NCI_HCI_ADM_DELETE_PIPE, &pipe, 1, NULL);
}