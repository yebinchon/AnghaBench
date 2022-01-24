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
typedef  int u16 ;
struct hci_request {struct hci_dev* hdev; } ;
struct hci_dev {int adv_instance_timeout; int /*<<< orphan*/  cur_adv_instance; int /*<<< orphan*/  adv_instance_expire; int /*<<< orphan*/  req_workqueue; int /*<<< orphan*/  adv_instances; } ;
struct adv_info {scalar_t__ timeout; scalar_t__ duration; scalar_t__ remaining_time; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOENT ; 
 int EPERM ; 
 int /*<<< orphan*/  HCI_ADVERTISING ; 
 int /*<<< orphan*/  HCI_LE_ADV ; 
 int /*<<< orphan*/  FUNC0 (struct hci_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct hci_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_request*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct hci_dev*) ; 
 scalar_t__ FUNC5 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 struct adv_info* FUNC6 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC10(struct hci_request *req, u8 instance,
				    bool force)
{
	struct hci_dev *hdev = req->hdev;
	struct adv_info *adv_instance = NULL;
	u16 timeout;

	if (FUNC5(hdev, HCI_ADVERTISING) ||
	    FUNC7(&hdev->adv_instances))
		return -EPERM;

	if (hdev->adv_instance_timeout)
		return -EBUSY;

	adv_instance = FUNC6(hdev, instance);
	if (!adv_instance)
		return -ENOENT;

	/* A zero timeout means unlimited advertising. As long as there is
	 * only one instance, duration should be ignored. We still set a timeout
	 * in case further instances are being added later on.
	 *
	 * If the remaining lifetime of the instance is more than the duration
	 * then the timeout corresponds to the duration, otherwise it will be
	 * reduced to the remaining instance lifetime.
	 */
	if (adv_instance->timeout == 0 ||
	    adv_instance->duration <= adv_instance->remaining_time)
		timeout = adv_instance->duration;
	else
		timeout = adv_instance->remaining_time;

	/* The remaining time is being reduced unless the instance is being
	 * advertised without time limit.
	 */
	if (adv_instance->timeout)
		adv_instance->remaining_time =
				adv_instance->remaining_time - timeout;

	/* Only use work for scheduling instances with legacy advertising */
	if (!FUNC4(hdev)) {
		hdev->adv_instance_timeout = timeout;
		FUNC9(hdev->req_workqueue,
			   &hdev->adv_instance_expire,
			   FUNC8(timeout * 1000));
	}

	/* If we're just re-scheduling the same instance again then do not
	 * execute any HCI commands. This happens when a single instance is
	 * being advertised.
	 */
	if (!force && hdev->cur_adv_instance == instance &&
	    FUNC5(hdev, HCI_LE_ADV))
		return 0;

	hdev->cur_adv_instance = instance;
	if (FUNC4(hdev)) {
		FUNC1(req, instance);
	} else {
		FUNC2(req, instance);
		FUNC3(req, instance);
		FUNC0(req);
	}

	return 0;
}