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
struct nci_dev {int /*<<< orphan*/  nci_ver; } ;
struct nci_core_reset_rsp {scalar_t__ status; int /*<<< orphan*/  config_status; int /*<<< orphan*/  nci_ver; } ;

/* Variables and functions */
 scalar_t__ NCI_STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (struct nci_dev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,...) ; 

__attribute__((used)) static void FUNC2(struct nci_dev *ndev, struct sk_buff *skb)
{
	struct nci_core_reset_rsp *rsp = (void *) skb->data;

	FUNC1("status 0x%x\n", rsp->status);

	if (rsp->status == NCI_STATUS_OK) {
		ndev->nci_ver = rsp->nci_ver;
		FUNC1("nci_ver 0x%x, config_status 0x%x\n",
			 rsp->nci_ver, rsp->config_status);
	}

	FUNC0(ndev, rsp->status);
}