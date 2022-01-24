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
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {unsigned int dma_addr; unsigned int dma_bytes; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct axg_fifo {int /*<<< orphan*/  map; } ;
typedef  unsigned int dma_addr_t ;

/* Variables and functions */
 unsigned int AXG_FIFO_BURST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FIFO_CTRL0 ; 
 int /*<<< orphan*/  FIFO_FINISH_ADDR ; 
 int /*<<< orphan*/  FIFO_INT_ADDR ; 
 int /*<<< orphan*/  FIFO_INT_COUNT_REPEAT ; 
 int /*<<< orphan*/  FIFO_START_ADDR ; 
 struct axg_fifo* FUNC1 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_hw_params*) ; 
 unsigned int FUNC3 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC6 (struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *ss,
				  struct snd_pcm_hw_params *params)
{
	struct snd_pcm_runtime *runtime = ss->runtime;
	struct axg_fifo *fifo = FUNC1(ss);
	dma_addr_t end_ptr;
	unsigned int burst_num;
	int ret;

	ret = FUNC6(ss, FUNC2(params));
	if (ret < 0)
		return ret;

	/* Setup dma memory pointers */
	end_ptr = runtime->dma_addr + runtime->dma_bytes - AXG_FIFO_BURST;
	FUNC5(fifo->map, FIFO_START_ADDR, runtime->dma_addr);
	FUNC5(fifo->map, FIFO_FINISH_ADDR, end_ptr);

	/* Setup interrupt periodicity */
	burst_num = FUNC3(params) / AXG_FIFO_BURST;
	FUNC5(fifo->map, FIFO_INT_ADDR, burst_num);

	/* Enable block count irq */
	FUNC4(fifo->map, FIFO_CTRL0,
			   FUNC0(FIFO_INT_COUNT_REPEAT),
			   FUNC0(FIFO_INT_COUNT_REPEAT));

	return 0;
}