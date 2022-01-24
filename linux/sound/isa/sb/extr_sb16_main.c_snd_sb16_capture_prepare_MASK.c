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
struct snd_sb {unsigned int c_dma_size; int mode; unsigned int dma8; unsigned int dma16; int /*<<< orphan*/  reg_lock; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int channels; int /*<<< orphan*/  dma_addr; int /*<<< orphan*/  rate; int /*<<< orphan*/  format; } ;

/* Variables and functions */
 int DMA_AUTOINIT ; 
 int DMA_MODE_READ ; 
 unsigned int SB_DSP4_IN16_AI ; 
 unsigned int SB_DSP4_IN8_AI ; 
 unsigned char SB_DSP4_MODE_SIGN_MONO ; 
 unsigned char SB_DSP4_MODE_SIGN_STEREO ; 
 unsigned char SB_DSP4_MODE_UNS_MONO ; 
 unsigned char SB_DSP4_MODE_UNS_STEREO ; 
 unsigned int SB_DSP_DMA16_OFF ; 
 unsigned int SB_DSP_DMA8_OFF ; 
 int SB_MODE_CAPTURE_16 ; 
 int SB_MODE_CAPTURE_8 ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_CAPTURE ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ,unsigned int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (struct snd_pcm_substream*) ; 
 unsigned int FUNC3 (struct snd_pcm_substream*) ; 
 struct snd_sb* FUNC4 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_sb*,struct snd_pcm_runtime*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_sb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_sb*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC10(struct snd_pcm_substream *substream)
{
	unsigned long flags;
	struct snd_sb *chip = FUNC4(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	unsigned char format;
	unsigned int size, count, dma;

	FUNC5(chip, runtime);
	if (FUNC1(runtime->format) > 0) {
		format = runtime->channels > 1 ? SB_DSP4_MODE_UNS_STEREO : SB_DSP4_MODE_UNS_MONO;
	} else {
		format = runtime->channels > 1 ? SB_DSP4_MODE_SIGN_STEREO : SB_DSP4_MODE_SIGN_MONO;
	}
	FUNC6(chip, runtime->rate, SNDRV_PCM_STREAM_CAPTURE);
	size = chip->c_dma_size = FUNC2(substream);
	dma = (chip->mode & SB_MODE_CAPTURE_8) ? chip->dma8 : chip->dma16;
	FUNC0(dma, runtime->dma_addr, size, DMA_MODE_READ | DMA_AUTOINIT);

	count = FUNC3(substream);
	FUNC8(&chip->reg_lock, flags);
	if (chip->mode & SB_MODE_CAPTURE_16) {
		count >>= 1;
		count--;
		FUNC7(chip, SB_DSP4_IN16_AI);
		FUNC7(chip, format);
		FUNC7(chip, count & 0xff);
		FUNC7(chip, count >> 8);
		FUNC7(chip, SB_DSP_DMA16_OFF);
	} else {
		count--;
		FUNC7(chip, SB_DSP4_IN8_AI);
		FUNC7(chip, format);
		FUNC7(chip, count & 0xff);
		FUNC7(chip, count >> 8);
		FUNC7(chip, SB_DSP_DMA8_OFF);
	}
	FUNC9(&chip->reg_lock, flags);
	return 0;
}