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
struct snd_sb {int hardware; int mode; scalar_t__ capture_format; int dma16; int dma8; unsigned int c_dma_size; unsigned int c_period_size; unsigned int force_mode16; int /*<<< orphan*/  reg_lock; int /*<<< orphan*/  mixer_lock; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int channels; unsigned int rate; int rate_den; int /*<<< orphan*/  dma_addr; int /*<<< orphan*/  format; } ;

/* Variables and functions */
 int DMA_AUTOINIT ; 
 int DMA_MODE_READ ; 
 int EBUSY ; 
 int EINVAL ; 
 unsigned int FUNC0 (int) ; 
 unsigned int SB_DSP_BLOCK_SIZE ; 
 int /*<<< orphan*/  SB_DSP_CAPTURE_FILT ; 
 void* SB_DSP_HI_INPUT_AUTO ; 
 scalar_t__ SB_DSP_INPUT ; 
 void* SB_DSP_LO_INPUT_AUTO ; 
 unsigned char SB_DSP_MONO_16BIT ; 
 unsigned int SB_DSP_MONO_8BIT ; 
 unsigned int SB_DSP_SAMPLE_RATE ; 
 unsigned int SB_DSP_SPEAKER_OFF ; 
 unsigned char SB_DSP_STEREO_16BIT ; 
 unsigned int SB_DSP_STEREO_8BIT ; 
#define  SB_HW_10 132 
#define  SB_HW_20 131 
#define  SB_HW_201 130 
#define  SB_HW_JAZZ16 129 
#define  SB_HW_PRO 128 
 int SB_MODE_CAPTURE_16 ; 
 int SB_MODE_CAPTURE_8 ; 
 int SB_MODE_PLAYBACK_16 ; 
 int /*<<< orphan*/  SNDRV_PCM_FORMAT_S16_LE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,unsigned int,int) ; 
 unsigned int FUNC3 (struct snd_pcm_substream*) ; 
 unsigned int FUNC4 (struct snd_pcm_substream*) ; 
 struct snd_sb* FUNC5 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_sb*,unsigned int) ; 
 unsigned int FUNC7 (struct snd_sb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_sb*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC13(struct snd_pcm_substream *substream)
{
	unsigned long flags;
	struct snd_sb *chip = FUNC5(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	unsigned int mixreg, rate, size, count;
	unsigned char format;
	unsigned char stereo = runtime->channels > 1;
	int dma;

	rate = runtime->rate;
	switch (chip->hardware) {
	case SB_HW_JAZZ16:
		if (runtime->format == SNDRV_PCM_FORMAT_S16_LE) {
			if (chip->mode & SB_MODE_PLAYBACK_16)
				return -EBUSY;
			else
				chip->mode |= SB_MODE_CAPTURE_16;
		}
		chip->capture_format = SB_DSP_LO_INPUT_AUTO;
		break;
	case SB_HW_PRO:
		if (runtime->channels > 1) {
			if (FUNC1(rate != FUNC0(11025) &&
				       rate != FUNC0(22050)))
				return -EINVAL;
			chip->capture_format = SB_DSP_HI_INPUT_AUTO;
			break;
		}
		chip->capture_format = (rate > 23000) ? SB_DSP_HI_INPUT_AUTO : SB_DSP_LO_INPUT_AUTO;
		break;
	case SB_HW_201:
		if (rate > 13000) {
			chip->capture_format = SB_DSP_HI_INPUT_AUTO;
			break;
		}
		/* fall through */
	case SB_HW_20:
		chip->capture_format = SB_DSP_LO_INPUT_AUTO;
		break;
	case SB_HW_10:
		chip->capture_format = SB_DSP_INPUT;
		break;
	default:
		return -EINVAL;
	}
	if (chip->mode & SB_MODE_CAPTURE_16) {
		format = stereo ? SB_DSP_STEREO_16BIT : SB_DSP_MONO_16BIT;
		dma = chip->dma16;
	} else {
		format = stereo ? SB_DSP_STEREO_8BIT : SB_DSP_MONO_8BIT;
		chip->mode |= SB_MODE_CAPTURE_8;
		dma = chip->dma8;
	}
	size = chip->c_dma_size = FUNC3(substream);
	count = chip->c_period_size = FUNC4(substream);
	FUNC10(&chip->reg_lock, flags);
	FUNC6(chip, SB_DSP_SPEAKER_OFF);
	if (chip->hardware == SB_HW_JAZZ16)
		FUNC6(chip, format);
	else if (stereo)
		FUNC6(chip, SB_DSP_STEREO_8BIT);
	FUNC6(chip, SB_DSP_SAMPLE_RATE);
	if (stereo) {
		FUNC6(chip, 256 - runtime->rate_den / 2);
		FUNC9(&chip->mixer_lock);
		/* save input filter status and turn it off */
		mixreg = FUNC7(chip, SB_DSP_CAPTURE_FILT);
		FUNC8(chip, SB_DSP_CAPTURE_FILT, mixreg | 0x20);
		FUNC11(&chip->mixer_lock);
		/* just use force_mode16 for temporary storate... */
		chip->force_mode16 = mixreg;
	} else {
		FUNC6(chip, 256 - runtime->rate_den);
	}
	if (chip->capture_format != SB_DSP_INPUT) {
		if (chip->mode & SB_MODE_PLAYBACK_16)
			count /= 2;
		count--;
		FUNC6(chip, SB_DSP_BLOCK_SIZE);
		FUNC6(chip, count & 0xff);
		FUNC6(chip, count >> 8);
	}
	FUNC12(&chip->reg_lock, flags);
	FUNC2(dma, runtime->dma_addr,
			size, DMA_MODE_READ | DMA_AUTOINIT);
	return 0;
}