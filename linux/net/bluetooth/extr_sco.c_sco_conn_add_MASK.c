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
struct sco_conn {scalar_t__ mtu; struct hci_conn* hcon; int /*<<< orphan*/  lock; } ;
struct hci_dev {scalar_t__ sco_mtu; } ;
struct hci_conn {struct sco_conn* sco_data; struct hci_dev* hdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hci_conn*,struct sco_conn*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct sco_conn* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct sco_conn *FUNC3(struct hci_conn *hcon)
{
	struct hci_dev *hdev = hcon->hdev;
	struct sco_conn *conn = hcon->sco_data;

	if (conn)
		return conn;

	conn = FUNC1(sizeof(struct sco_conn), GFP_KERNEL);
	if (!conn)
		return NULL;

	FUNC2(&conn->lock);

	hcon->sco_data = conn;
	conn->hcon = hcon;

	if (hdev->sco_mtu > 0)
		conn->mtu = hdev->sco_mtu;
	else
		conn->mtu = 60;

	FUNC0("hcon %p conn %p", hcon, conn);

	return conn;
}