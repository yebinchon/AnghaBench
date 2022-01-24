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
typedef  int /*<<< orphan*/  u8 ;
struct smp_chan {int /*<<< orphan*/  dhkey; int /*<<< orphan*/  tfm_cmac; int /*<<< orphan*/ * prnd; int /*<<< orphan*/ * rrnd; TYPE_1__* conn; } ;
struct hci_conn {int /*<<< orphan*/  resp_addr_type; int /*<<< orphan*/  init_addr_type; int /*<<< orphan*/  resp_addr; int /*<<< orphan*/  init_addr; scalar_t__ out; } ;
struct TYPE_2__ {struct hci_conn* hcon; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct smp_chan *smp, u8 mackey[16], u8 ltk[16])
{
	struct hci_conn *hcon = smp->conn->hcon;
	u8 *na, *nb, a[7], b[7];

	if (hcon->out) {
		na   = smp->prnd;
		nb   = smp->rrnd;
	} else {
		na   = smp->rrnd;
		nb   = smp->prnd;
	}

	FUNC0(a, &hcon->init_addr, 6);
	FUNC0(b, &hcon->resp_addr, 6);
	a[6] = hcon->init_addr_type;
	b[6] = hcon->resp_addr_type;

	return FUNC1(smp->tfm_cmac, smp->dhkey, na, nb, a, b, mackey, ltk);
}