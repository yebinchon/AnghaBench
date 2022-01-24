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
struct snd_wss {unsigned int c_dma_size; int* image; int hardware; int /*<<< orphan*/  reg_lock; scalar_t__ single_dma; int /*<<< orphan*/  dma2; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int /*<<< orphan*/  dma_addr; } ;

/* Variables and functions */
 size_t CS4231_IFACE_CTRL ; 
 size_t CS4231_PLAYBK_FORMAT ; 
 int /*<<< orphan*/  CS4231_PLY_LWR_CNT ; 
 int /*<<< orphan*/  CS4231_PLY_UPR_CNT ; 
 int CS4231_RECORD_ENABLE ; 
 int CS4231_RECORD_PIO ; 
 size_t CS4231_REC_FORMAT ; 
 int /*<<< orphan*/  CS4231_REC_LWR_CNT ; 
 int /*<<< orphan*/  CS4231_REC_UPR_CNT ; 
 int DMA_AUTOINIT ; 
 int DMA_MODE_READ ; 
 int WSS_HW_AD1848_MASK ; 
 int WSS_HW_INTERWAVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int) ; 
 unsigned int FUNC1 (struct snd_pcm_substream*) ; 
 unsigned int FUNC2 (struct snd_pcm_substream*) ; 
 struct snd_wss* FUNC3 (struct snd_pcm_substream*) ; 
 unsigned int FUNC4 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_wss*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC8(struct snd_pcm_substream *substream)
{
	struct snd_wss *chip = FUNC3(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	unsigned long flags;
	unsigned int size = FUNC1(substream);
	unsigned int count = FUNC2(substream);

	FUNC6(&chip->reg_lock, flags);
	chip->c_dma_size = size;
	chip->image[CS4231_IFACE_CTRL] &= ~(CS4231_RECORD_ENABLE | CS4231_RECORD_PIO);
	FUNC0(chip->dma2, runtime->dma_addr, size, DMA_MODE_READ | DMA_AUTOINIT);
	if (chip->hardware & WSS_HW_AD1848_MASK)
		count = FUNC4(chip->image[CS4231_PLAYBK_FORMAT],
					  count);
	else
		count = FUNC4(chip->image[CS4231_REC_FORMAT],
					  count);
	count--;
	if (chip->single_dma && chip->hardware != WSS_HW_INTERWAVE) {
		FUNC5(chip, CS4231_PLY_LWR_CNT, (unsigned char) count);
		FUNC5(chip, CS4231_PLY_UPR_CNT,
			    (unsigned char) (count >> 8));
	} else {
		FUNC5(chip, CS4231_REC_LWR_CNT, (unsigned char) count);
		FUNC5(chip, CS4231_REC_UPR_CNT,
			    (unsigned char) (count >> 8));
	}
	FUNC7(&chip->reg_lock, flags);
	return 0;
}