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
struct sock {int dummy; } ;
struct mgmt_rp_read_info {int /*<<< orphan*/  short_name; int /*<<< orphan*/  name; int /*<<< orphan*/  dev_class; void* current_settings; void* supported_settings; int /*<<< orphan*/  manufacturer; int /*<<< orphan*/  version; int /*<<< orphan*/  bdaddr; } ;
struct hci_dev {int /*<<< orphan*/  id; int /*<<< orphan*/  short_name; int /*<<< orphan*/  dev_name; int /*<<< orphan*/  dev_class; int /*<<< orphan*/  manufacturer; int /*<<< orphan*/  hci_ver; int /*<<< orphan*/  bdaddr; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  rp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MGMT_OP_READ_INFO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct mgmt_rp_read_info*,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mgmt_rp_read_info*,int) ; 

__attribute__((used)) static int FUNC11(struct sock *sk, struct hci_dev *hdev,
				void *data, u16 data_len)
{
	struct mgmt_rp_read_info rp;

	FUNC0("sock %p %s", sk, hdev->name);

	FUNC6(hdev);

	FUNC9(&rp, 0, sizeof(rp));

	FUNC1(&rp.bdaddr, &hdev->bdaddr);

	rp.version = hdev->hci_ver;
	rp.manufacturer = FUNC2(hdev->manufacturer);

	rp.supported_settings = FUNC3(FUNC5(hdev));
	rp.current_settings = FUNC3(FUNC4(hdev));

	FUNC8(rp.dev_class, hdev->dev_class, 3);

	FUNC8(rp.name, hdev->dev_name, sizeof(hdev->dev_name));
	FUNC8(rp.short_name, hdev->short_name, sizeof(hdev->short_name));

	FUNC7(hdev);

	return FUNC10(sk, hdev->id, MGMT_OP_READ_INFO, 0, &rp,
				 sizeof(rp));
}