#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct hci_request {TYPE_2__* hdev; } ;
struct hci_cp_inquiry {int length; int /*<<< orphan*/  lap; } ;
typedef  int /*<<< orphan*/  cp ;
struct TYPE_5__ {scalar_t__ limited; } ;
struct TYPE_6__ {TYPE_1__ discovery; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCI_OP_INQUIRY ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_request*,int /*<<< orphan*/ ,int,struct hci_cp_inquiry*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int const*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_cp_inquiry*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct hci_request *req, unsigned long opt)
{
	u8 length = opt;
	const u8 giac[3] = { 0x33, 0x8b, 0x9e };
	const u8 liac[3] = { 0x00, 0x8b, 0x9e };
	struct hci_cp_inquiry cp;

	FUNC0("%s", req->hdev->name);

	FUNC1(req->hdev);
	FUNC3(req->hdev);
	FUNC2(req->hdev);

	FUNC6(&cp, 0, sizeof(cp));

	if (req->hdev->discovery.limited)
		FUNC5(&cp.lap, liac, sizeof(cp.lap));
	else
		FUNC5(&cp.lap, giac, sizeof(cp.lap));

	cp.length = length;

	FUNC4(req, HCI_OP_INQUIRY, sizeof(cp), &cp);

	return 0;
}