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
struct sst_dsp_device {int /*<<< orphan*/  thread; } ;
struct sst_dsp {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; TYPE_1__* ops; struct sst_dsp_device* sst_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq_handler; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct sst_dsp*) ; 

int FUNC2(struct sst_dsp *sst)
{
	struct sst_dsp_device *sst_dev = sst->sst_dev;
	int ret;

	/* Register the ISR */
	ret = FUNC1(sst->irq, sst->ops->irq_handler,
		sst_dev->thread, IRQF_SHARED, "AudioDSP", sst);
	if (ret)
		FUNC0(sst->dev, "unable to grab threaded IRQ %d, disabling device\n",
			       sst->irq);

	return ret;
}