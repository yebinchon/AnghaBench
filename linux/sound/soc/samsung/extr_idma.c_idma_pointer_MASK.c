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
struct snd_pcm_runtime {struct idma_ctrl* private_data; } ;
struct idma_ctrl {unsigned long start; int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  snd_pcm_uframes_t ;
typedef  unsigned long dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_pcm_runtime*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static snd_pcm_uframes_t
	FUNC4(struct snd_pcm_substream *substream)
{
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct idma_ctrl *prtd = runtime->private_data;
	dma_addr_t src;
	unsigned long res;

	FUNC2(&prtd->lock);

	FUNC1(&src);
	res = src - prtd->start;

	FUNC3(&prtd->lock);

	return FUNC0(substream->runtime, res);
}