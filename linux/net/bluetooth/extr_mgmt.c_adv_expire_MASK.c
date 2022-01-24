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
typedef  int u32 ;
struct hci_request {int dummy; } ;
struct hci_dev {int /*<<< orphan*/  cur_adv_instance; } ;
struct adv_info {int flags; int /*<<< orphan*/  instance; } ;

/* Variables and functions */
 int FUNC0 (struct hci_request*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*) ; 
 struct adv_info* FUNC2 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 struct adv_info* FUNC3 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_request*,struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_request*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct hci_dev *hdev, u32 flags)
{
	struct adv_info *adv_instance;
	struct hci_request req;
	int err;

	adv_instance = FUNC2(hdev, hdev->cur_adv_instance);
	if (!adv_instance)
		return;

	/* stop if current instance doesn't need to be changed */
	if (!(adv_instance->flags & flags))
		return;

	FUNC1(hdev);

	adv_instance = FUNC3(hdev, adv_instance->instance);
	if (!adv_instance)
		return;

	FUNC4(&req, hdev);
	err = FUNC0(&req, adv_instance->instance,
					      true);
	if (err)
		return;

	FUNC5(&req, NULL);
}