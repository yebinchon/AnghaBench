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
typedef  int u32 ;
struct sst_dsp {int /*<<< orphan*/  spinlock; } ;
typedef  int irqreturn_t ;

/* Variables and functions */
 int IRQ_NONE ; 
 int IRQ_WAKE_THREAD ; 
 int /*<<< orphan*/  SST_IMRX ; 
 int /*<<< orphan*/  SST_IMRX_BUSY ; 
 int /*<<< orphan*/  SST_IMRX_DONE ; 
 int /*<<< orphan*/  SST_ISRX ; 
 int SST_ISRX_BUSY ; 
 int SST_ISRX_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct sst_dsp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sst_dsp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *context)
{
	struct sst_dsp *sst = (struct sst_dsp *) context;
	u32 isr;
	int ret = IRQ_NONE;

	FUNC0(&sst->spinlock);

	/* Interrupt arrived, check src */
	isr = FUNC2(sst, SST_ISRX);
	if (isr & SST_ISRX_DONE) {
		FUNC5(isr,
			FUNC2(sst, SST_IMRX));

		/* Mask Done interrupt before return */
		FUNC3(sst, SST_IMRX,
			SST_IMRX_DONE, SST_IMRX_DONE);
		ret = IRQ_WAKE_THREAD;
	}

	if (isr & SST_ISRX_BUSY) {
		FUNC4(isr,
			FUNC2(sst, SST_IMRX));

		/* Mask Busy interrupt before return */
		FUNC3(sst, SST_IMRX,
			SST_IMRX_BUSY, SST_IMRX_BUSY);
		ret = IRQ_WAKE_THREAD;
	}

	FUNC1(&sst->spinlock);
	return ret;
}