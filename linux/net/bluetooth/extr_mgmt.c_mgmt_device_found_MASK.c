#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct TYPE_4__ {int /*<<< orphan*/  type; int /*<<< orphan*/  bdaddr; } ;
struct mgmt_ev_device_found {scalar_t__* eir; int /*<<< orphan*/  eir_len; int /*<<< orphan*/  flags; scalar_t__ rssi; TYPE_2__ addr; } ;
struct TYPE_3__ {int /*<<< orphan*/  report_invalid_rssi; scalar_t__ limited; scalar_t__ result_filtering; } ;
struct hci_dev {TYPE_1__ discovery; int /*<<< orphan*/  pend_le_reports; } ;
typedef  scalar_t__ s8 ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  bdaddr_t ;

/* Variables and functions */
 scalar_t__ ACL_LINK ; 
 int /*<<< orphan*/  EIR_CLASS_OF_DEV ; 
 int /*<<< orphan*/  EIR_FLAGS ; 
 scalar_t__ HCI_RSSI_INVALID ; 
 scalar_t__ LE_AD_LIMITED ; 
 scalar_t__ LE_LINK ; 
 int /*<<< orphan*/  MGMT_EV_DEVICE_FOUND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__*,int,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 scalar_t__* FUNC4 (scalar_t__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*,scalar_t__,scalar_t__*,int,scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*,scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct hci_dev*,struct mgmt_ev_device_found*,size_t,int /*<<< orphan*/ *) ; 

void FUNC12(struct hci_dev *hdev, bdaddr_t *bdaddr, u8 link_type,
		       u8 addr_type, u8 *dev_class, s8 rssi, u32 flags,
		       u8 *eir, u16 eir_len, u8 *scan_rsp, u8 scan_rsp_len)
{
	char buf[512];
	struct mgmt_ev_device_found *ev = (void *)buf;
	size_t ev_size;

	/* Don't send events for a non-kernel initiated discovery. With
	 * LE one exception is if we have pend_le_reports > 0 in which
	 * case we're doing passive scanning and want these events.
	 */
	if (!FUNC5(hdev)) {
		if (link_type == ACL_LINK)
			return;
		if (link_type == LE_LINK && FUNC8(&hdev->pend_le_reports))
			return;
	}

	if (hdev->discovery.result_filtering) {
		/* We are using service discovery */
		if (!FUNC6(hdev, rssi, eir, eir_len, scan_rsp,
				     scan_rsp_len))
			return;
	}

	if (hdev->discovery.limited) {
		/* Check for limited discoverable bit */
		if (dev_class) {
			if (!(dev_class[1] & 0x20))
				return;
		} else {
			u8 *flags = FUNC4(eir, eir_len, EIR_FLAGS, NULL);
			if (!flags || !(flags[0] & LE_AD_LIMITED))
				return;
		}
	}

	/* Make sure that the buffer is big enough. The 5 extra bytes
	 * are for the potential CoD field.
	 */
	if (sizeof(*ev) + eir_len + scan_rsp_len + 5 > sizeof(buf))
		return;

	FUNC10(buf, 0, sizeof(buf));

	/* In case of device discovery with BR/EDR devices (pre 1.2), the
	 * RSSI value was reported as 0 when not available. This behavior
	 * is kept when using device discovery. This is required for full
	 * backwards compatibility with the API.
	 *
	 * However when using service discovery, the value 127 will be
	 * returned when the RSSI is not available.
	 */
	if (rssi == HCI_RSSI_INVALID && !hdev->discovery.report_invalid_rssi &&
	    link_type == ACL_LINK)
		rssi = 0;

	FUNC0(&ev->addr.bdaddr, bdaddr);
	ev->addr.type = FUNC7(link_type, addr_type);
	ev->rssi = rssi;
	ev->flags = FUNC2(flags);

	if (eir_len > 0)
		/* Copy EIR or advertising data into event */
		FUNC9(ev->eir, eir, eir_len);

	if (dev_class && !FUNC4(ev->eir, eir_len, EIR_CLASS_OF_DEV,
				       NULL))
		eir_len = FUNC3(ev->eir, eir_len, EIR_CLASS_OF_DEV,
					  dev_class, 3);

	if (scan_rsp_len > 0)
		/* Append scan response data to event */
		FUNC9(ev->eir + eir_len, scan_rsp, scan_rsp_len);

	ev->eir_len = FUNC1(eir_len + scan_rsp_len);
	ev_size = sizeof(*ev) + eir_len + scan_rsp_len;

	FUNC11(MGMT_EV_DEVICE_FOUND, hdev, ev, ev_size, NULL);
}