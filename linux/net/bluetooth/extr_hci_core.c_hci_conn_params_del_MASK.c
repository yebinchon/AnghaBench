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
struct hci_dev {int dummy; } ;
struct hci_conn_params {int dummy; } ;
typedef  int /*<<< orphan*/  bdaddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hci_conn_params*) ; 
 struct hci_conn_params* FUNC2 (struct hci_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*) ; 

void FUNC4(struct hci_dev *hdev, bdaddr_t *addr, u8 addr_type)
{
	struct hci_conn_params *params;

	params = FUNC2(hdev, addr, addr_type);
	if (!params)
		return;

	FUNC1(params);

	FUNC3(hdev);

	FUNC0("addr %pMR (type %u)", addr, addr_type);
}