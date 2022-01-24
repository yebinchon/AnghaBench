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
typedef  int /*<<< orphan*/  u16 ;
struct hci_request {struct hci_dev* hdev; } ;
struct hci_dev {int dummy; } ;
struct hci_cp_write_def_link_policy {int /*<<< orphan*/  policy; } ;
typedef  int /*<<< orphan*/  cp ;

/* Variables and functions */
 int /*<<< orphan*/  HCI_LP_HOLD ; 
 int /*<<< orphan*/  HCI_LP_PARK ; 
 int /*<<< orphan*/  HCI_LP_RSWITCH ; 
 int /*<<< orphan*/  HCI_LP_SNIFF ; 
 int /*<<< orphan*/  HCI_OP_WRITE_DEF_LINK_POLICY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hci_request*,int /*<<< orphan*/ ,int,struct hci_cp_write_def_link_policy*) ; 
 scalar_t__ FUNC2 (struct hci_dev*) ; 
 scalar_t__ FUNC3 (struct hci_dev*) ; 
 scalar_t__ FUNC4 (struct hci_dev*) ; 
 scalar_t__ FUNC5 (struct hci_dev*) ; 

__attribute__((used)) static void FUNC6(struct hci_request *req)
{
	struct hci_dev *hdev = req->hdev;
	struct hci_cp_write_def_link_policy cp;
	u16 link_policy = 0;

	if (FUNC4(hdev))
		link_policy |= HCI_LP_RSWITCH;
	if (FUNC2(hdev))
		link_policy |= HCI_LP_HOLD;
	if (FUNC5(hdev))
		link_policy |= HCI_LP_SNIFF;
	if (FUNC3(hdev))
		link_policy |= HCI_LP_PARK;

	cp.policy = FUNC0(link_policy);
	FUNC1(req, HCI_OP_WRITE_DEF_LINK_POLICY, sizeof(cp), &cp);
}