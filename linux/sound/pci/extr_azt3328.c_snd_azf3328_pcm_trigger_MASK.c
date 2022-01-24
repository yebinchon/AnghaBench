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
typedef  int u16 ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int /*<<< orphan*/  dma_addr; int /*<<< orphan*/  channels; int /*<<< orphan*/  format; int /*<<< orphan*/  rate; struct snd_azf3328_codec_data* private_data; } ;
struct snd_azf3328_codec_data {scalar_t__ type; int /*<<< orphan*/  name; int /*<<< orphan*/  lock; int /*<<< orphan*/  running; } ;
struct snd_azf3328 {TYPE_1__* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ AZF_CODEC_PLAYBACK ; 
 int DMA_EPILOGUE_SOMETHING ; 
 int DMA_RESUME ; 
 int DMA_RUN_SOMETHING1 ; 
 int DMA_RUN_SOMETHING2 ; 
 int DMA_SOMETHING_ELSE ; 
 int EINVAL ; 
 int /*<<< orphan*/  IDX_IO_CODEC_DMA_FLAGS ; 
 int /*<<< orphan*/  IDX_IO_CODEC_IRQTYPE ; 
#define  SNDRV_PCM_TRIGGER_PAUSE_PUSH 133 
#define  SNDRV_PCM_TRIGGER_PAUSE_RELEASE 132 
#define  SNDRV_PCM_TRIGGER_RESUME 131 
#define  SNDRV_PCM_TRIGGER_START 130 
#define  SNDRV_PCM_TRIGGER_STOP 129 
#define  SNDRV_PCM_TRIGGER_SUSPEND 128 
 int SOMETHING_ALMOST_ALWAYS_SET ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct snd_azf3328_codec_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_azf3328_codec_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_azf3328*,struct snd_azf3328_codec_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_azf3328_codec_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_azf3328*,scalar_t__,int) ; 
 int FUNC7 (struct snd_azf3328*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC10 (struct snd_pcm_substream*) ; 
 struct snd_azf3328* FUNC11 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC14(struct snd_pcm_substream *substream, int cmd)
{
	struct snd_azf3328 *chip = FUNC11(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct snd_azf3328_codec_data *codec = runtime->private_data;
	int result = 0;
	u16 flags1;
	bool previously_muted = false;
	bool is_main_mixer_playback_codec = (AZF_CODEC_PLAYBACK == codec->type);

	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
		FUNC1(chip->card->dev, "START PCM %s\n", codec->name);

		if (is_main_mixer_playback_codec) {
			/* mute WaveOut (avoid clicking during setup) */
			previously_muted =
				FUNC7(
						chip, 1
				);
		}

		FUNC5(codec,
			runtime->rate,
			FUNC8(runtime->format),
			runtime->channels);

		FUNC12(codec->lock);
		/* first, remember current value: */
		flags1 = FUNC2(codec, IDX_IO_CODEC_DMA_FLAGS);

		/* stop transfer */
		flags1 &= ~DMA_RESUME;
		FUNC3(codec, IDX_IO_CODEC_DMA_FLAGS, flags1);

		/* FIXME: clear interrupts or what??? */
		FUNC3(codec, IDX_IO_CODEC_IRQTYPE, 0xffff);
		FUNC13(codec->lock);

		FUNC4(chip, codec, runtime->dma_addr,
			FUNC10(substream),
			FUNC9(substream)
		);

		FUNC12(codec->lock);
#ifdef WIN9X
		/* FIXME: enable playback/recording??? */
		flags1 |= DMA_RUN_SOMETHING1 | DMA_RUN_SOMETHING2;
		snd_azf3328_codec_outw(codec, IDX_IO_CODEC_DMA_FLAGS, flags1);

		/* start transfer again */
		/* FIXME: what is this value (0x0010)??? */
		flags1 |= DMA_RESUME | DMA_EPILOGUE_SOMETHING;
		snd_azf3328_codec_outw(codec, IDX_IO_CODEC_DMA_FLAGS, flags1);
#else /* NT4 */
		FUNC3(codec, IDX_IO_CODEC_DMA_FLAGS,
			0x0000);
		FUNC3(codec, IDX_IO_CODEC_DMA_FLAGS,
			DMA_RUN_SOMETHING1);
		FUNC3(codec, IDX_IO_CODEC_DMA_FLAGS,
			DMA_RUN_SOMETHING1 |
			DMA_RUN_SOMETHING2);
		FUNC3(codec, IDX_IO_CODEC_DMA_FLAGS,
			DMA_RESUME |
			SOMETHING_ALMOST_ALWAYS_SET |
			DMA_EPILOGUE_SOMETHING |
			DMA_SOMETHING_ELSE);
#endif
		FUNC13(codec->lock);
		FUNC6(chip, codec->type, 1);

		if (is_main_mixer_playback_codec) {
			/* now unmute WaveOut */
			if (!previously_muted)
				FUNC7(
						chip, 0
				);
		}

		FUNC1(chip->card->dev, "PCM STARTED %s\n", codec->name);
		break;
	case SNDRV_PCM_TRIGGER_RESUME:
		FUNC1(chip->card->dev, "PCM RESUME %s\n", codec->name);
		/* resume codec if we were active */
		FUNC12(codec->lock);
		if (codec->running)
			FUNC3(codec, IDX_IO_CODEC_DMA_FLAGS,
				FUNC2(
					codec, IDX_IO_CODEC_DMA_FLAGS
				) | DMA_RESUME
			);
		FUNC13(codec->lock);
		break;
	case SNDRV_PCM_TRIGGER_STOP:
		FUNC1(chip->card->dev, "PCM STOP %s\n", codec->name);

		if (is_main_mixer_playback_codec) {
			/* mute WaveOut (avoid clicking during setup) */
			previously_muted =
				FUNC7(
						chip, 1
				);
		}

		FUNC12(codec->lock);
		/* first, remember current value: */
		flags1 = FUNC2(codec, IDX_IO_CODEC_DMA_FLAGS);

		/* stop transfer */
		flags1 &= ~DMA_RESUME;
		FUNC3(codec, IDX_IO_CODEC_DMA_FLAGS, flags1);

		/* hmm, is this really required? we're resetting the same bit
		 * immediately thereafter... */
		flags1 |= DMA_RUN_SOMETHING1;
		FUNC3(codec, IDX_IO_CODEC_DMA_FLAGS, flags1);

		flags1 &= ~DMA_RUN_SOMETHING1;
		FUNC3(codec, IDX_IO_CODEC_DMA_FLAGS, flags1);
		FUNC13(codec->lock);
		FUNC6(chip, codec->type, 0);

		if (is_main_mixer_playback_codec) {
			/* now unmute WaveOut */
			if (!previously_muted)
				FUNC7(
						chip, 0
				);
		}

		FUNC1(chip->card->dev, "PCM STOPPED %s\n", codec->name);
		break;
	case SNDRV_PCM_TRIGGER_SUSPEND:
		FUNC1(chip->card->dev, "PCM SUSPEND %s\n", codec->name);
		/* make sure codec is stopped */
		FUNC3(codec, IDX_IO_CODEC_DMA_FLAGS,
			FUNC2(
				codec, IDX_IO_CODEC_DMA_FLAGS
			) & ~DMA_RESUME
		);
		break;
        case SNDRV_PCM_TRIGGER_PAUSE_PUSH:
		FUNC0(1, "FIXME: SNDRV_PCM_TRIGGER_PAUSE_PUSH NIY!\n");
                break;
        case SNDRV_PCM_TRIGGER_PAUSE_RELEASE:
		FUNC0(1, "FIXME: SNDRV_PCM_TRIGGER_PAUSE_RELEASE NIY!\n");
                break;
        default:
		FUNC0(1, "FIXME: unknown trigger mode!\n");
                return -EINVAL;
	}

	return result;
}