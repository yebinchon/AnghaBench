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
struct snd_pcm_substream {int dummy; } ;
struct axg_fifo {int /*<<< orphan*/  map; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 unsigned int FIFO_INT_COUNT_REPEAT ; 
 unsigned int FIFO_INT_MASK ; 
 int /*<<< orphan*/  FIFO_STATUS1 ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct axg_fifo*,unsigned int) ; 
 struct axg_fifo* FUNC3 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_pcm_substream*) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *dev_id)
{
	struct snd_pcm_substream *ss = dev_id;
	struct axg_fifo *fifo = FUNC3(ss);
	unsigned int status;

	FUNC6(fifo->map, FIFO_STATUS1, &status);

	status = FUNC1(status) & FIFO_INT_MASK;
	if (status & FIFO_INT_COUNT_REPEAT)
		FUNC7(ss);
	else
		FUNC5(FUNC4(ss), "unexpected irq - STS 0x%02x\n",
			status);

	/* Ack irqs */
	FUNC2(fifo, status);

	return FUNC0(status);
}