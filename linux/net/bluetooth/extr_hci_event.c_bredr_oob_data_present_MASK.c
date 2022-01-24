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
typedef  int u8 ;
struct oob_data {int present; int /*<<< orphan*/  hash192; int /*<<< orphan*/  rand192; int /*<<< orphan*/  hash256; int /*<<< orphan*/  rand256; } ;
struct hci_dev {int dummy; } ;
struct hci_conn {int /*<<< orphan*/  dst; struct hci_dev* hdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BDADDR_BREDR ; 
 int /*<<< orphan*/  HCI_SC_ONLY ; 
 int /*<<< orphan*/  ZERO_KEY ; 
 scalar_t__ FUNC0 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 struct oob_data* FUNC2 (struct hci_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static u8 FUNC4(struct hci_conn *conn)
{
	struct hci_dev *hdev = conn->hdev;
	struct oob_data *data;

	data = FUNC2(hdev, &conn->dst, BDADDR_BREDR);
	if (!data)
		return 0x00;

	if (FUNC0(hdev)) {
		/* When Secure Connections is enabled, then just
		 * return the present value stored with the OOB
		 * data. The stored value contains the right present
		 * information. However it can only be trusted when
		 * not in Secure Connection Only mode.
		 */
		if (!FUNC1(hdev, HCI_SC_ONLY))
			return data->present;

		/* When Secure Connections Only mode is enabled, then
		 * the P-256 values are required. If they are not
		 * available, then do not declare that OOB data is
		 * present.
		 */
		if (!FUNC3(data->rand256, ZERO_KEY, 16) ||
		    !FUNC3(data->hash256, ZERO_KEY, 16))
			return 0x00;

		return 0x02;
	}

	/* When Secure Connections is not enabled or actually
	 * not supported by the hardware, then check that if
	 * P-192 data values are present.
	 */
	if (!FUNC3(data->rand192, ZERO_KEY, 16) ||
	    !FUNC3(data->hash192, ZERO_KEY, 16))
		return 0x00;

	return 0x01;
}