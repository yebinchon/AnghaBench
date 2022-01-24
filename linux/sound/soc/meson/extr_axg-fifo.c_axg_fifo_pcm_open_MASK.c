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
struct snd_pcm_substream {int /*<<< orphan*/  runtime; } ;
struct device {int dummy; } ;
struct axg_fifo {int /*<<< orphan*/  pclk; int /*<<< orphan*/  arb; int /*<<< orphan*/  map; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  AXG_FIFO_MIN_DEPTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CTRL1_STATUS2_SEL_MASK ; 
 int /*<<< orphan*/  FIFO_CTRL0 ; 
 int /*<<< orphan*/  FIFO_CTRL1 ; 
 int /*<<< orphan*/  FIFO_INT_MASK ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_BUFFER_BYTES ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIOD_BYTES ; 
 int /*<<< orphan*/  STATUS2_SEL_DDR_READ ; 
 int /*<<< orphan*/  FUNC2 (struct axg_fifo*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct axg_fifo*,int /*<<< orphan*/ ) ; 
 struct axg_fifo* FUNC4 (struct snd_pcm_substream*) ; 
 struct device* FUNC5 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  axg_fifo_hw ; 
 int /*<<< orphan*/  axg_fifo_pcm_irq_block ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct snd_pcm_substream*) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct snd_pcm_substream*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct snd_pcm_substream *ss)
{
	struct axg_fifo *fifo = FUNC4(ss);
	struct device *dev = FUNC5(ss);
	int ret;

	FUNC13(ss, &axg_fifo_hw);

	/*
	 * Make sure the buffer and period size are multiple of the FIFO
	 * minimum depth size
	 */
	ret = FUNC12(ss->runtime, 0,
					 SNDRV_PCM_HW_PARAM_BUFFER_BYTES,
					 AXG_FIFO_MIN_DEPTH);
	if (ret)
		return ret;

	ret = FUNC12(ss->runtime, 0,
					 SNDRV_PCM_HW_PARAM_PERIOD_BYTES,
					 AXG_FIFO_MIN_DEPTH);
	if (ret)
		return ret;

	ret = FUNC10(fifo->irq, axg_fifo_pcm_irq_block, 0,
			  FUNC8(dev), ss);
	if (ret)
		return ret;

	/* Enable pclk to access registers and clock the fifo ip */
	ret = FUNC7(fifo->pclk);
	if (ret)
		return ret;

	/* Setup status2 so it reports the memory pointer */
	FUNC9(fifo->map, FIFO_CTRL1,
			   CTRL1_STATUS2_SEL_MASK,
			   FUNC1(STATUS2_SEL_DDR_READ));

	/* Make sure the dma is initially disabled */
	FUNC2(fifo, false);

	/* Disable irqs until params are ready */
	FUNC9(fifo->map, FIFO_CTRL0,
			   FUNC0(FIFO_INT_MASK), 0);

	/* Clear any pending interrupt */
	FUNC3(fifo, FIFO_INT_MASK);

	/* Take memory arbitror out of reset */
	ret = FUNC11(fifo->arb);
	if (ret)
		FUNC6(fifo->pclk);

	return ret;
}