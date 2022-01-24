#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int channels; int rate; int /*<<< orphan*/  dma_addr; int /*<<< orphan*/  format; } ;
struct TYPE_4__ {unsigned int size; int reg; int /*<<< orphan*/  addr; } ;
struct snd_ad1889 {TYPE_2__ wave; TYPE_1__* card; int /*<<< orphan*/  lock; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AD_CHAN_WAV ; 
 int /*<<< orphan*/  AD_DS_WAS ; 
 int /*<<< orphan*/  AD_DS_WSMC ; 
 int AD_DS_WSMC_WA16 ; 
 int AD_DS_WSMC_WAST ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ad1889*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ad1889*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_ad1889*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_ad1889*,unsigned int) ; 
 int FUNC4 (struct snd_ad1889*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_ad1889*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned int,unsigned int,int,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC8 (struct snd_pcm_substream*) ; 
 unsigned int FUNC9 (struct snd_pcm_substream*) ; 
 struct snd_ad1889* FUNC10 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC13(struct snd_pcm_substream *ss)
{
	struct snd_ad1889 *chip = FUNC10(ss);
	struct snd_pcm_runtime *rt = ss->runtime;
	unsigned int size = FUNC8(ss);
	unsigned int count = FUNC9(ss);
	u16 reg;

	FUNC0(chip, AD_CHAN_WAV);

	reg = FUNC4(chip, AD_DS_WSMC);
	
	/* Mask out 16-bit / Stereo */
	reg &= ~(AD_DS_WSMC_WA16 | AD_DS_WSMC_WAST);

	if (FUNC7(rt->format) == 16)
		reg |= AD_DS_WSMC_WA16;

	if (rt->channels > 1)
		reg |= AD_DS_WSMC_WAST;

	/* let's make sure we don't clobber ourselves */
	FUNC11(&chip->lock);
	
	chip->wave.size = size;
	chip->wave.reg = reg;
	chip->wave.addr = rt->dma_addr;

	FUNC5(chip, AD_DS_WSMC, chip->wave.reg);
	
	/* Set sample rates on the codec */
	FUNC5(chip, AD_DS_WAS, rt->rate);

	/* Set up DMA */
	FUNC1(chip, chip->wave.addr);
	FUNC2(chip, size);
	FUNC3(chip, count);

	/* writes flush */
	FUNC4(chip, AD_DS_WSMC);
	
	FUNC12(&chip->lock);
	
	FUNC6(chip->card->dev,
		"prepare playback: addr = 0x%x, count = %u, size = %u, reg = 0x%x, rate = %u\n",
		chip->wave.addr, count, size, reg, rt->rate);
	return 0;
}