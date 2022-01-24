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
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {long period_size; long channels; scalar_t__ dma_addr; } ;
struct snd_at73c213 {TYPE_1__* ssc; scalar_t__ period; } ;
struct TYPE_2__ {int /*<<< orphan*/  regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  PDC_TCR ; 
 int /*<<< orphan*/  PDC_TNCR ; 
 int /*<<< orphan*/  PDC_TNPR ; 
 int /*<<< orphan*/  PDC_TPR ; 
 int FUNC0 (struct snd_pcm_runtime*,long) ; 
 struct snd_at73c213* FUNC1 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,long) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *substream)
{
	struct snd_at73c213 *chip = FUNC1(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	int block_size;

	block_size = FUNC0(runtime, runtime->period_size);

	chip->period = 0;

	FUNC2(chip->ssc->regs, PDC_TPR,
			(long)runtime->dma_addr);
	FUNC2(chip->ssc->regs, PDC_TCR,
			runtime->period_size * runtime->channels);
	FUNC2(chip->ssc->regs, PDC_TNPR,
			(long)runtime->dma_addr + block_size);
	FUNC2(chip->ssc->regs, PDC_TNCR,
			runtime->period_size * runtime->channels);

	return 0;
}