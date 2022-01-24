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
typedef  int /*<<< orphan*/  data_exchange_cb_t ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_FWI ; 
 int /*<<< orphan*/  NFC_HCI_HCP_COMMAND ; 
 int FUNC0 (struct nfc_hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static int FUNC2(struct nfc_hci_dev *hdev, u8 pipe, u8 cmd,
			       const u8 *param, size_t param_len,
			       data_exchange_cb_t cb, void *cb_context)
{
	FUNC1("exec cmd async through pipe=%d, cmd=%d, plen=%zd\n", pipe,
		 cmd, param_len);

	/* TODO: Define hci cmd execution delay. Should it be the same
	 * for all commands?
	 */
	return FUNC0(hdev, pipe, NFC_HCI_HCP_COMMAND, cmd,
				      param, param_len, cb, cb_context, MAX_FWI);
}