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
struct sk_buff {scalar_t__ data; } ;
struct TYPE_2__ {int ssp_mode; } ;
struct inquiry_entry {TYPE_1__ data; } ;
struct hci_ev_remote_host_features {int* features; int /*<<< orphan*/  bdaddr; } ;
struct hci_dev {int /*<<< orphan*/  name; } ;
struct hci_conn {int /*<<< orphan*/ * features; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_LINK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int LMP_HOST_SSP ; 
 struct hci_conn* FUNC1 (struct hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*) ; 
 struct inquiry_entry* FUNC4 (struct hci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static void FUNC6(struct hci_dev *hdev,
					 struct sk_buff *skb)
{
	struct hci_ev_remote_host_features *ev = (void *) skb->data;
	struct inquiry_entry *ie;
	struct hci_conn *conn;

	FUNC0("%s", hdev->name);

	FUNC2(hdev);

	conn = FUNC1(hdev, ACL_LINK, &ev->bdaddr);
	if (conn)
		FUNC5(conn->features[1], ev->features, 8);

	ie = FUNC4(hdev, &ev->bdaddr);
	if (ie)
		ie->data.ssp_mode = (ev->features[0] & LMP_HOST_SSP);

	FUNC3(hdev);
}