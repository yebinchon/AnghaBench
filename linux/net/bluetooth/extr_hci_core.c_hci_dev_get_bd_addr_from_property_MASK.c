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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct hci_dev {int /*<<< orphan*/  public_addr; TYPE_1__ dev; } ;
struct fwnode_handle {int dummy; } ;
typedef  int /*<<< orphan*/  bdaddr_t ;
typedef  int /*<<< orphan*/  ba ;

/* Variables and functions */
 int /*<<< orphan*/  BDADDR_ANY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct fwnode_handle* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct fwnode_handle*,char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC4(struct hci_dev *hdev)
{
	struct fwnode_handle *fwnode = FUNC2(hdev->dev.parent);
	bdaddr_t ba;
	int ret;

	ret = FUNC3(fwnode, "local-bd-address",
					    (u8 *)&ba, sizeof(ba));
	if (ret < 0 || !FUNC0(&ba, BDADDR_ANY))
		return;

	FUNC1(&hdev->public_addr, &ba);
}