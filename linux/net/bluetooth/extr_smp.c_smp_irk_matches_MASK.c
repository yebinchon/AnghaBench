#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct smp_dev {int dummy; } ;
struct l2cap_chan {struct smp_dev* data; } ;
struct hci_dev {struct l2cap_chan* smp_data; } ;
struct TYPE_4__ {int /*<<< orphan*/ * b; } ;
typedef  TYPE_1__ bdaddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__ const*,int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

bool FUNC3(struct hci_dev *hdev, const u8 irk[16],
		     const bdaddr_t *bdaddr)
{
	struct l2cap_chan *chan = hdev->smp_data;
	struct smp_dev *smp;
	u8 hash[3];
	int err;

	if (!chan || !chan->data)
		return false;

	smp = chan->data;

	FUNC0("RPA %pMR IRK %*phN", bdaddr, 16, irk);

	err = FUNC2(irk, &bdaddr->b[3], hash);
	if (err)
		return false;

	return !FUNC1(bdaddr->b, hash, 3);
}