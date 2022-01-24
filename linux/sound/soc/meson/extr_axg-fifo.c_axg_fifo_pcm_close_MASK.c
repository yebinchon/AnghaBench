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
struct axg_fifo {int /*<<< orphan*/  irq; int /*<<< orphan*/  pclk; int /*<<< orphan*/  arb; } ;

/* Variables and functions */
 struct axg_fifo* FUNC0 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct snd_pcm_substream*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *ss)
{
	struct axg_fifo *fifo = FUNC0(ss);
	int ret;

	/* Put the memory arbitror back in reset */
	ret = FUNC3(fifo->arb);

	/* Disable fifo ip and register access */
	FUNC1(fifo->pclk);

	/* remove IRQ */
	FUNC2(fifo->irq, ss);

	return ret;
}