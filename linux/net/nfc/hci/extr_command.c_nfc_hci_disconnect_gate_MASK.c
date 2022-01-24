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
typedef  size_t u8 ;
struct nfc_hci_dev {size_t* gate2pipe; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 size_t NFC_HCI_ADMIN_PIPE ; 
 size_t NFC_HCI_INVALID_PIPE ; 
 size_t NFC_HCI_LINK_MGMT_PIPE ; 
 int FUNC0 (struct nfc_hci_dev*,size_t) ; 
 int FUNC1 (struct nfc_hci_dev*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

int FUNC3(struct nfc_hci_dev *hdev, u8 gate)
{
	int r;
	u8 pipe = hdev->gate2pipe[gate];

	FUNC2("\n");

	if (pipe == NFC_HCI_INVALID_PIPE)
		return -EADDRNOTAVAIL;

	r = FUNC0(hdev, pipe);
	if (r < 0)
		return r;

	if (pipe != NFC_HCI_LINK_MGMT_PIPE && pipe != NFC_HCI_ADMIN_PIPE) {
		r = FUNC1(hdev, pipe);
		if (r < 0)
			return r;
	}

	hdev->gate2pipe[gate] = NFC_HCI_INVALID_PIPE;

	return 0;
}