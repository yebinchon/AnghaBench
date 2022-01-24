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
struct davinci_mcasp {scalar_t__* substreams; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_NONE ; 
 size_t SNDRV_PCM_STREAM_CAPTURE ; 
 size_t SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC0 (int,void*) ; 
 int /*<<< orphan*/  FUNC1 (int,void*) ; 

__attribute__((used)) static irqreturn_t FUNC2(int irq, void *data)
{
	struct davinci_mcasp *mcasp = (struct davinci_mcasp *)data;
	irqreturn_t ret = IRQ_NONE;

	if (mcasp->substreams[SNDRV_PCM_STREAM_PLAYBACK])
		ret = FUNC1(irq, data);

	if (mcasp->substreams[SNDRV_PCM_STREAM_CAPTURE])
		ret |= FUNC0(irq, data);

	return ret;
}