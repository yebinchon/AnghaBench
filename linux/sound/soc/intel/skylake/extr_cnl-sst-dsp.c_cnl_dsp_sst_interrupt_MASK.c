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
struct sst_dsp {int intr_status; int /*<<< orphan*/  spinlock; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int CNL_ADSPIS_IPC ; 
 int /*<<< orphan*/  CNL_ADSP_REG_ADSPIS ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  IRQ_WAKE_THREAD ; 
 int /*<<< orphan*/  FUNC0 (struct sst_dsp*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct sst_dsp*,int /*<<< orphan*/ ) ; 

irqreturn_t FUNC4(int irq, void *dev_id)
{
	struct sst_dsp *ctx = dev_id;
	u32 val;
	irqreturn_t ret = IRQ_NONE;

	FUNC1(&ctx->spinlock);

	val = FUNC3(ctx, CNL_ADSP_REG_ADSPIS);
	ctx->intr_status = val;

	if (val == 0xffffffff) {
		FUNC2(&ctx->spinlock);
		return IRQ_NONE;
	}

	if (val & CNL_ADSPIS_IPC) {
		FUNC0(ctx);
		ret = IRQ_WAKE_THREAD;
	}

	FUNC2(&ctx->spinlock);

	return ret;
}