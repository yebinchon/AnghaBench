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
struct snd_pcm_runtime {scalar_t__ dma_addr; } ;
struct axg_fifo {int /*<<< orphan*/  map; } ;
typedef  int /*<<< orphan*/  snd_pcm_uframes_t ;

/* Variables and functions */
 int /*<<< orphan*/  FIFO_STATUS2 ; 
 struct axg_fifo* FUNC0 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_runtime*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static snd_pcm_uframes_t FUNC3(struct snd_pcm_substream *ss)
{
	struct axg_fifo *fifo = FUNC0(ss);
	struct snd_pcm_runtime *runtime = ss->runtime;
	unsigned int addr;

	FUNC2(fifo->map, FIFO_STATUS2, &addr);

	return FUNC1(runtime, addr - (unsigned int)runtime->dma_addr);
}