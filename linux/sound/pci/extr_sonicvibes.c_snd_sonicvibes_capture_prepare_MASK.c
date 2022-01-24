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
struct sonicvibes {unsigned int c_dma_size; int /*<<< orphan*/  reg_lock; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int channels; int /*<<< orphan*/  dma_addr; int /*<<< orphan*/  rate; int /*<<< orphan*/  format; } ;

/* Variables and functions */
 int /*<<< orphan*/  SV_IREG_DMA_C_LOWER ; 
 int /*<<< orphan*/  SV_IREG_DMA_C_UPPER ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (struct snd_pcm_substream*) ; 
 unsigned int FUNC2 (struct snd_pcm_substream*) ; 
 struct sonicvibes* FUNC3 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC4 (struct sonicvibes*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct sonicvibes*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sonicvibes*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct sonicvibes*,int,unsigned char) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct snd_pcm_substream *substream)
{
	struct sonicvibes *sonic = FUNC3(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	unsigned char fmt = 0;
	unsigned int size = FUNC1(substream);
	unsigned int count = FUNC2(substream);

	sonic->c_dma_size = size;
	count >>= 1;
	count--;
	if (runtime->channels > 1)
		fmt |= 0x10;
	if (FUNC0(runtime->format) == 16)
		fmt |= 0x20;
	FUNC7(sonic, ~0x30, fmt);
	FUNC5(sonic, runtime->rate);
	FUNC8(&sonic->reg_lock);
	FUNC6(sonic, runtime->dma_addr, size);
	FUNC4(sonic, SV_IREG_DMA_C_UPPER, count >> 8);
	FUNC4(sonic, SV_IREG_DMA_C_LOWER, count);
	FUNC9(&sonic->reg_lock);
	return 0;
}