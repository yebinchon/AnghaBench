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
struct nfc_dev {int dummy; } ;
struct nci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NCI_STATIC_RF_CONN_ID ; 
 int FUNC0 (struct nci_dev*,int /*<<< orphan*/ ,struct sk_buff*) ; 
 struct nci_dev* FUNC1 (struct nfc_dev*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(struct nfc_dev *nfc_dev, struct sk_buff *skb)
{
	struct nci_dev *ndev = FUNC1(nfc_dev);
	int rc;

	rc = FUNC0(ndev, NCI_STATIC_RF_CONN_ID, skb);
	if (rc)
		FUNC2("unable to send data\n");

	return rc;
}