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
struct hci_dev {int dev_type; } ;
struct hci_conn {int dummy; } ;
struct hci_chan {struct hci_conn* conn; } ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
#define  HCI_AMP 129 
#define  HCI_PRIMARY 128 
 int /*<<< orphan*/  FUNC0 (struct hci_dev*,char*,int) ; 
 struct hci_chan* FUNC1 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 struct hci_conn* FUNC2 (struct hci_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct hci_conn *FUNC3(struct hci_dev *hdev,
						 __u16 handle)
{
	struct hci_chan *chan;

	switch (hdev->dev_type) {
	case HCI_PRIMARY:
		return FUNC2(hdev, handle);
	case HCI_AMP:
		chan = FUNC1(hdev, handle);
		if (chan)
			return chan->conn;
		break;
	default:
		FUNC0(hdev, "unknown dev_type %d", hdev->dev_type);
		break;
	}

	return NULL;
}