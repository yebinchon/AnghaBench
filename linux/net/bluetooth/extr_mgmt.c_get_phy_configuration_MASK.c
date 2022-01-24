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
struct mgmt_rp_get_phy_confguration {void* configurable_phys; void* selected_phys; void* supported_phys; } ;
struct hci_dev {int /*<<< orphan*/  id; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  rp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MGMT_OP_GET_PHY_CONFIGURATION ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct mgmt_rp_get_phy_confguration*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mgmt_rp_get_phy_confguration*,int) ; 

__attribute__((used)) static int FUNC9(struct sock *sk, struct hci_dev *hdev,
				 void *data, u16 len)
{
	struct mgmt_rp_get_phy_confguration rp;

	FUNC0("sock %p %s", sk, hdev->name);

	FUNC5(hdev);

	FUNC7(&rp, 0, sizeof(rp));

	rp.supported_phys = FUNC1(FUNC4(hdev));
	rp.selected_phys = FUNC1(FUNC3(hdev));
	rp.configurable_phys = FUNC1(FUNC2(hdev));

	FUNC6(hdev);

	return FUNC8(sk, hdev->id, MGMT_OP_GET_PHY_CONFIGURATION, 0,
				 &rp, sizeof(rp));
}