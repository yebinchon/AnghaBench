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
typedef  void* u16 ;
struct sk_buff {scalar_t__ data; } ;
struct hci_ev_le_remote_conn_param_req {int /*<<< orphan*/  timeout; int /*<<< orphan*/  latency; int /*<<< orphan*/  interval_max; int /*<<< orphan*/  interval_min; int /*<<< orphan*/  handle; } ;
struct hci_dev {int dummy; } ;
struct hci_cp_le_conn_param_req_reply {scalar_t__ max_ce_len; scalar_t__ min_ce_len; int /*<<< orphan*/  timeout; int /*<<< orphan*/  latency; int /*<<< orphan*/  interval_max; int /*<<< orphan*/  interval_min; int /*<<< orphan*/  handle; } ;
struct hci_conn_params {void* supervision_timeout; void* conn_latency; void* conn_max_interval; void* conn_min_interval; } ;
struct hci_conn {scalar_t__ state; scalar_t__ role; int /*<<< orphan*/  dst_type; int /*<<< orphan*/  dst; } ;
typedef  int /*<<< orphan*/  cp ;

/* Variables and functions */
 scalar_t__ BT_CONNECTED ; 
 int /*<<< orphan*/  HCI_ERROR_INVALID_LL_PARAMS ; 
 int /*<<< orphan*/  HCI_ERROR_UNKNOWN_CONN_ID ; 
 int /*<<< orphan*/  HCI_OP_LE_CONN_PARAM_REQ_REPLY ; 
 scalar_t__ HCI_ROLE_MASTER ; 
 scalar_t__ FUNC0 (void*,void*,void*,void*) ; 
 struct hci_conn* FUNC1 (struct hci_dev*,void*) ; 
 struct hci_conn_params* FUNC2 (struct hci_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*,int /*<<< orphan*/ ,int,struct hci_cp_le_conn_param_req_reply*) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,void*,void*,void*,void*) ; 
 void FUNC8 (struct hci_dev*,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct hci_dev *hdev,
					     struct sk_buff *skb)
{
	struct hci_ev_le_remote_conn_param_req *ev = (void *) skb->data;
	struct hci_cp_le_conn_param_req_reply cp;
	struct hci_conn *hcon;
	u16 handle, min, max, latency, timeout;

	handle = FUNC6(ev->handle);
	min = FUNC6(ev->interval_min);
	max = FUNC6(ev->interval_max);
	latency = FUNC6(ev->latency);
	timeout = FUNC6(ev->timeout);

	hcon = FUNC1(hdev, handle);
	if (!hcon || hcon->state != BT_CONNECTED)
		return FUNC8(hdev, handle,
						 HCI_ERROR_UNKNOWN_CONN_ID);

	if (FUNC0(min, max, latency, timeout))
		return FUNC8(hdev, handle,
						 HCI_ERROR_INVALID_LL_PARAMS);

	if (hcon->role == HCI_ROLE_MASTER) {
		struct hci_conn_params *params;
		u8 store_hint;

		FUNC3(hdev);

		params = FUNC2(hdev, &hcon->dst,
						hcon->dst_type);
		if (params) {
			params->conn_min_interval = min;
			params->conn_max_interval = max;
			params->conn_latency = latency;
			params->supervision_timeout = timeout;
			store_hint = 0x01;
		} else{
			store_hint = 0x00;
		}

		FUNC4(hdev);

		FUNC7(hdev, &hcon->dst, hcon->dst_type,
				    store_hint, min, max, latency, timeout);
	}

	cp.handle = ev->handle;
	cp.interval_min = ev->interval_min;
	cp.interval_max = ev->interval_max;
	cp.latency = ev->latency;
	cp.timeout = ev->timeout;
	cp.min_ce_len = 0;
	cp.max_ce_len = 0;

	FUNC5(hdev, HCI_OP_LE_CONN_PARAM_REQ_REPLY, sizeof(cp), &cp);
}