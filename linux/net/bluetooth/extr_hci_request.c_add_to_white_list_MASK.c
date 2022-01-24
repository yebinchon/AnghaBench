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
struct hci_request {int dummy; } ;
struct hci_cp_le_add_to_white_list {int /*<<< orphan*/  bdaddr; int /*<<< orphan*/  bdaddr_type; } ;
struct hci_conn_params {int /*<<< orphan*/  addr; int /*<<< orphan*/  addr_type; } ;
typedef  int /*<<< orphan*/  cp ;

/* Variables and functions */
 int /*<<< orphan*/  HCI_OP_LE_ADD_TO_WHITE_LIST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct hci_request*,int /*<<< orphan*/ ,int,struct hci_cp_le_add_to_white_list*) ; 

__attribute__((used)) static void FUNC2(struct hci_request *req,
			      struct hci_conn_params *params)
{
	struct hci_cp_le_add_to_white_list cp;

	cp.bdaddr_type = params->addr_type;
	FUNC0(&cp.bdaddr, &params->addr);

	FUNC1(req, HCI_OP_LE_ADD_TO_WHITE_LIST, sizeof(cp), &cp);
}