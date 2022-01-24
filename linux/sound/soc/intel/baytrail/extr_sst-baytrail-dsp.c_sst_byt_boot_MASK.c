#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {scalar_t__ lpe; } ;
struct sst_dsp {int /*<<< orphan*/  dev; TYPE_2__* pdata; TYPE_1__ addr; } ;
struct TYPE_4__ {int /*<<< orphan*/  fw_base; } ;

/* Variables and functions */
 int SST_BYT_CSR_PWAITMODE ; 
 int /*<<< orphan*/  SST_BYT_CSR_STALL ; 
 scalar_t__ SST_BYT_MAILBOX_OFFSET ; 
 int /*<<< orphan*/  SST_CSR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct sst_dsp*) ; 
 int FUNC4 (struct sst_dsp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sst_dsp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct sst_dsp *sst)
{
	int tries = 10;

	/*
	 * save the physical address of extended firmware block in the first
	 * 4 bytes of the mailbox
	 */
	FUNC1(sst->addr.lpe + SST_BYT_MAILBOX_OFFSET,
	       &sst->pdata->fw_base, sizeof(u32));

	/* release stall and wait to unstall */
	FUNC5(sst, SST_CSR, SST_BYT_CSR_STALL, 0x0);
	while (tries--) {
		if (!(FUNC4(sst, SST_CSR) &
		      SST_BYT_CSR_PWAITMODE))
			break;
		FUNC2(100);
	}
	if (tries < 0) {
		FUNC0(sst->dev, "unable to start DSP\n");
		FUNC3(sst);
	}
}