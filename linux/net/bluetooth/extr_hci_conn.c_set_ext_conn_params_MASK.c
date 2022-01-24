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
struct hci_dev {int le_scan_interval; } ;
struct hci_cp_le_ext_conn_param {void* max_ce_len; void* min_ce_len; void* supervision_timeout; void* conn_latency; void* conn_interval_max; void* conn_interval_min; void* scan_interval; void* scan_window; } ;
struct hci_conn {int le_conn_min_interval; int le_conn_max_interval; int le_conn_latency; int le_supv_timeout; struct hci_dev* hdev; } ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct hci_cp_le_ext_conn_param*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct hci_conn *conn,
				struct hci_cp_le_ext_conn_param *p)
{
	struct hci_dev *hdev = conn->hdev;

	FUNC1(p, 0, sizeof(*p));

	/* Set window to be the same value as the interval to
	 * enable continuous scanning.
	 */
	p->scan_interval = FUNC0(hdev->le_scan_interval);
	p->scan_window = p->scan_interval;
	p->conn_interval_min = FUNC0(conn->le_conn_min_interval);
	p->conn_interval_max = FUNC0(conn->le_conn_max_interval);
	p->conn_latency = FUNC0(conn->le_conn_latency);
	p->supervision_timeout = FUNC0(conn->le_supv_timeout);
	p->min_ce_len = FUNC0(0x0000);
	p->max_ce_len = FUNC0(0x0000);
}