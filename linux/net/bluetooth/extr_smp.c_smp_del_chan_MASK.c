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
struct smp_dev {int /*<<< orphan*/  tfm_ecdh; int /*<<< orphan*/  tfm_cmac; } ;
struct l2cap_chan {struct smp_dev* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct smp_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct l2cap_chan*) ; 

__attribute__((used)) static void FUNC5(struct l2cap_chan *chan)
{
	struct smp_dev *smp;

	FUNC0("chan %p", chan);

	smp = chan->data;
	if (smp) {
		chan->data = NULL;
		FUNC2(smp->tfm_cmac);
		FUNC1(smp->tfm_ecdh);
		FUNC3(smp);
	}

	FUNC4(chan);
}