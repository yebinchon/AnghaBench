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
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct axg_fifo {int /*<<< orphan*/  map; int /*<<< orphan*/  pclk; } ;

/* Variables and functions */
 int AXG_FIFO_MIN_CNT ; 
 int /*<<< orphan*/  CTRL0_TODDR_EXT_SIGNED ; 
 int /*<<< orphan*/  CTRL0_TODDR_PP_MODE ; 
 int /*<<< orphan*/  CTRL0_TODDR_SEL_RESAMPLE ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  CTRL1_THRESHOLD_MASK ; 
 int /*<<< orphan*/  FIFO_CTRL0 ; 
 int /*<<< orphan*/  FIFO_CTRL1 ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct axg_fifo* FUNC3 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream,
				 struct snd_soc_dai *dai)
{
	struct axg_fifo *fifo = FUNC3(dai);
	unsigned int fifo_threshold;
	int ret;

	/* Enable pclk to access registers and clock the fifo ip */
	ret = FUNC1(fifo->pclk);
	if (ret)
		return ret;

	/* Select orginal data - resampling not supported ATM */
	FUNC2(fifo->map, FIFO_CTRL0, CTRL0_TODDR_SEL_RESAMPLE, 0);

	/* Only signed format are supported ATM */
	FUNC2(fifo->map, FIFO_CTRL0, CTRL0_TODDR_EXT_SIGNED,
			   CTRL0_TODDR_EXT_SIGNED);

	/* Apply single buffer mode to the interface */
	FUNC2(fifo->map, FIFO_CTRL0, CTRL0_TODDR_PP_MODE, 0);

	/* TODDR does not have a configurable fifo depth */
	fifo_threshold = AXG_FIFO_MIN_CNT - 1;
	FUNC2(fifo->map, FIFO_CTRL1, CTRL1_THRESHOLD_MASK,
			   FUNC0(fifo_threshold));

	return 0;
}