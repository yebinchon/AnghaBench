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
struct nfc_hci_dev {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NFC_HCI_ANY_SET_PARAMETER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 int FUNC3 (struct nfc_hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(struct nfc_hci_dev *hdev, u8 gate, u8 idx,
		      const u8 *param, size_t param_len)
{
	int r;
	u8 *tmp;

	/* TODO ELa: reg idx must be inserted before param, but we don't want
	 * to ask the caller to do it to keep a simpler API.
	 * For now, just create a new temporary param buffer. This is far from
	 * optimal though, and the plan is to modify APIs to pass idx down to
	 * nfc_hci_hcp_message_tx where the frame is actually built, thereby
	 * eliminating the need for the temp allocation-copy here.
	 */

	FUNC4("idx=%d to gate %d\n", idx, gate);

	tmp = FUNC1(1 + param_len, GFP_KERNEL);
	if (tmp == NULL)
		return -ENOMEM;

	*tmp = idx;
	FUNC2(tmp + 1, param, param_len);

	r = FUNC3(hdev, gate, NFC_HCI_ANY_SET_PARAMETER,
			     tmp, param_len + 1, NULL);

	FUNC0(tmp);

	return r;
}