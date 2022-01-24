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
typedef  scalar_t__ u8 ;
struct hci_dev {int dummy; } ;
struct hci_conn {scalar_t__ dst_type; scalar_t__ state; } ;
typedef  int /*<<< orphan*/  bdaddr_t ;

/* Variables and functions */
 scalar_t__ BT_CONNECTED ; 
 int /*<<< orphan*/  LE_LINK ; 
 struct hci_conn* FUNC0 (struct hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC1(struct hci_dev *hdev, bdaddr_t *addr, u8 type)
{
	struct hci_conn *conn;

	conn = FUNC0(hdev, LE_LINK, addr);
	if (!conn)
		return false;

	if (conn->dst_type != type)
		return false;

	if (conn->state != BT_CONNECTED)
		return false;

	return true;
}