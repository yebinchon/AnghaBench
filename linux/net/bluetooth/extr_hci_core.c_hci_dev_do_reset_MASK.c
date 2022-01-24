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
struct hci_dev {scalar_t__ le_cnt; scalar_t__ sco_cnt; scalar_t__ acl_cnt; int /*<<< orphan*/  cmd_cnt; int /*<<< orphan*/  (* flush ) (struct hci_dev*) ;int /*<<< orphan*/  workqueue; int /*<<< orphan*/  cmd_q; int /*<<< orphan*/  rx_q; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,struct hci_dev*) ; 
 int /*<<< orphan*/  HCI_INIT_TIMEOUT ; 
 int FUNC1 (struct hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct hci_dev*) ; 
 int /*<<< orphan*/  hci_reset_req ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct hci_dev*) ; 

__attribute__((used)) static int FUNC12(struct hci_dev *hdev)
{
	int ret;

	FUNC0("%s %p", hdev->name, hdev);

	FUNC8(hdev);

	/* Drop queues */
	FUNC10(&hdev->rx_q);
	FUNC10(&hdev->cmd_q);

	/* Avoid potential lockdep warnings from the *_flush() calls by
	 * ensuring the workqueue is empty up front.
	 */
	FUNC3(hdev->workqueue);

	FUNC5(hdev);
	FUNC7(hdev);
	FUNC4(hdev);
	FUNC6(hdev);

	if (hdev->flush)
		hdev->flush(hdev);

	FUNC2(&hdev->cmd_cnt, 1);
	hdev->acl_cnt = 0; hdev->sco_cnt = 0; hdev->le_cnt = 0;

	ret = FUNC1(hdev, hci_reset_req, 0, HCI_INIT_TIMEOUT, NULL);

	FUNC9(hdev);
	return ret;
}