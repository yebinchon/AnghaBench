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
 int CTRL0_FRDDR_PP_MODE ; 
 int FUNC0 (unsigned int) ; 
 int CTRL1_FRDDR_DEPTH_MASK ; 
 int FUNC1 (unsigned int) ; 
 int CTRL1_THRESHOLD_MASK ; 
 int /*<<< orphan*/  FIFO_CTRL0 ; 
 int /*<<< orphan*/  FIFO_CTRL1 ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 struct axg_fifo* FUNC4 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream,
				 struct snd_soc_dai *dai)
{
	struct axg_fifo *fifo = FUNC4(dai);
	unsigned int fifo_depth, fifo_threshold;
	int ret;

	/* Enable pclk to access registers and clock the fifo ip */
	ret = FUNC2(fifo->pclk);
	if (ret)
		return ret;

	/* Apply single buffer mode to the interface */
	FUNC3(fifo->map, FIFO_CTRL0, CTRL0_FRDDR_PP_MODE, 0);

	/*
	 * TODO: We could adapt the fifo depth and the fifo threshold
	 * depending on the expected memory throughput and lantencies
	 * For now, we'll just use the same values as the vendor kernel
	 * Depth and threshold are zero based.
	 */
	fifo_depth = AXG_FIFO_MIN_CNT - 1;
	fifo_threshold = (AXG_FIFO_MIN_CNT / 2) - 1;
	FUNC3(fifo->map, FIFO_CTRL1,
			   CTRL1_FRDDR_DEPTH_MASK | CTRL1_THRESHOLD_MASK,
			   FUNC0(fifo_depth) |
			   FUNC1(fifo_threshold));

	return 0;
}