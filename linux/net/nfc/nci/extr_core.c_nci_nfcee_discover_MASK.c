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
 int /*<<< orphan*/  NCI_CMD_TIMEOUT ; 
 int FUNC0 (struct nci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nci_nfcee_discover_req ; 

int FUNC2(struct nci_dev *ndev, u8 action)
{
	return FUNC0(ndev, nci_nfcee_discover_req, action,
				FUNC1(NCI_CMD_TIMEOUT));
}