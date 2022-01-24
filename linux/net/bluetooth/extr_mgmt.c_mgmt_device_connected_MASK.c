#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  size_t u16 ;
struct TYPE_2__ {int /*<<< orphan*/  type; int /*<<< orphan*/  bdaddr; } ;
struct mgmt_ev_device_connected {int /*<<< orphan*/  eir_len; int /*<<< orphan*/ * eir; int /*<<< orphan*/  flags; TYPE_1__ addr; } ;
struct hci_dev {int dummy; } ;
struct hci_conn {size_t le_adv_data_len; scalar_t__* dev_class; int /*<<< orphan*/  le_adv_data; int /*<<< orphan*/  dst_type; int /*<<< orphan*/  type; int /*<<< orphan*/  dst; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIR_CLASS_OF_DEV ; 
 int /*<<< orphan*/  EIR_NAME_COMPLETE ; 
 int /*<<< orphan*/  MGMT_EV_DEVICE_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 size_t FUNC3 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct hci_dev*,char*,int,int /*<<< orphan*/ *) ; 

void FUNC8(struct hci_dev *hdev, struct hci_conn *conn,
			   u32 flags, u8 *name, u8 name_len)
{
	char buf[512];
	struct mgmt_ev_device_connected *ev = (void *) buf;
	u16 eir_len = 0;

	FUNC1(&ev->addr.bdaddr, &conn->dst);
	ev->addr.type = FUNC4(conn->type, conn->dst_type);

	ev->flags = FUNC0(flags);

	/* We must ensure that the EIR Data fields are ordered and
	 * unique. Keep it simple for now and avoid the problem by not
	 * adding any BR/EDR data to the LE adv.
	 */
	if (conn->le_adv_data_len > 0) {
		FUNC6(&ev->eir[eir_len],
		       conn->le_adv_data, conn->le_adv_data_len);
		eir_len = conn->le_adv_data_len;
	} else {
		if (name_len > 0)
			eir_len = FUNC3(ev->eir, 0, EIR_NAME_COMPLETE,
						  name, name_len);

		if (FUNC5(conn->dev_class, "\0\0\0", 3) != 0)
			eir_len = FUNC3(ev->eir, eir_len,
						  EIR_CLASS_OF_DEV,
						  conn->dev_class, 3);
	}

	ev->eir_len = FUNC2(eir_len);

	FUNC7(MGMT_EV_DEVICE_CONNECTED, hdev, buf,
		    sizeof(*ev) + eir_len, NULL);
}