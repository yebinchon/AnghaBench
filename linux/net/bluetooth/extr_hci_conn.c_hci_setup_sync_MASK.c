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
struct sco_param {int /*<<< orphan*/  max_latency; int /*<<< orphan*/  pkt_type; int /*<<< orphan*/  retrans_effort; } ;
struct hci_dev {int dummy; } ;
struct hci_cp_setup_sync_conn {void* max_latency; void* pkt_type; int /*<<< orphan*/  retrans_effort; void* voice_setting; void* rx_bandwidth; void* tx_bandwidth; void* handle; } ;
struct hci_conn {int out; size_t attempt; int setting; int /*<<< orphan*/  link; int /*<<< orphan*/  state; struct hci_dev* hdev; } ;
typedef  int /*<<< orphan*/  cp ;
typedef  int __u16 ;

/* Variables and functions */
 size_t FUNC0 (struct sco_param*) ; 
 int /*<<< orphan*/  BT_CONNECT ; 
 int /*<<< orphan*/  FUNC1 (char*,struct hci_conn*) ; 
 int /*<<< orphan*/  HCI_OP_SETUP_SYNC_CONN ; 
#define  SCO_AIRMODE_CVSD 129 
 int SCO_AIRMODE_MASK ; 
#define  SCO_AIRMODE_TRANSP 128 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int) ; 
 void* FUNC4 (int) ; 
 struct sco_param* esco_param_cvsd ; 
 struct sco_param* esco_param_msbc ; 
 scalar_t__ FUNC5 (struct hci_dev*,int /*<<< orphan*/ ,int,struct hci_cp_setup_sync_conn*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct sco_param* sco_param_cvsd ; 

bool FUNC7(struct hci_conn *conn, __u16 handle)
{
	struct hci_dev *hdev = conn->hdev;
	struct hci_cp_setup_sync_conn cp;
	const struct sco_param *param;

	FUNC1("hcon %p", conn);

	conn->state = BT_CONNECT;
	conn->out = true;

	conn->attempt++;

	cp.handle   = FUNC3(handle);

	cp.tx_bandwidth   = FUNC4(0x00001f40);
	cp.rx_bandwidth   = FUNC4(0x00001f40);
	cp.voice_setting  = FUNC3(conn->setting);

	switch (conn->setting & SCO_AIRMODE_MASK) {
	case SCO_AIRMODE_TRANSP:
		if (conn->attempt > FUNC0(esco_param_msbc))
			return false;
		param = &esco_param_msbc[conn->attempt - 1];
		break;
	case SCO_AIRMODE_CVSD:
		if (FUNC6(conn->link)) {
			if (conn->attempt > FUNC0(esco_param_cvsd))
				return false;
			param = &esco_param_cvsd[conn->attempt - 1];
		} else {
			if (conn->attempt > FUNC0(sco_param_cvsd))
				return false;
			param = &sco_param_cvsd[conn->attempt - 1];
		}
		break;
	default:
		return false;
	}

	cp.retrans_effort = param->retrans_effort;
	cp.pkt_type = FUNC2(param->pkt_type);
	cp.max_latency = FUNC2(param->max_latency);

	if (FUNC5(hdev, HCI_OP_SETUP_SYNC_CONN, sizeof(cp), &cp) < 0)
		return false;

	return true;
}