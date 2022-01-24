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
struct hci_request {int dummy; } ;
struct hci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hci_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hci_request*,struct hci_dev*) ; 
 int FUNC2 (struct hci_request*,int /*<<< orphan*/ *) ; 

int FUNC3(struct hci_dev *hdev, u8 instance)
{
	struct hci_request req;

	FUNC1(&req, hdev);
	FUNC0(&req, instance);

	return FUNC2(&req, NULL);
}