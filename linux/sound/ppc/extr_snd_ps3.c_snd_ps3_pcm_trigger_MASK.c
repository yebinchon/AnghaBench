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
struct snd_ps3_card_info {int running; int /*<<< orphan*/  dma_lock; } ;
struct snd_pcm_substream {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PS3_AUDIO_AX_IS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PS3_AUDIO_KICK_STATUS_MASK ; 
#define  SNDRV_PCM_TRIGGER_START 129 
#define  SNDRV_PCM_TRIGGER_STOP 128 
 int /*<<< orphan*/  SND_PS3_DMA_FILLTYPE_SILENT_FIRSTFILL ; 
 int /*<<< orphan*/  SND_PS3_DMA_FILLTYPE_SILENT_RUNNING ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct snd_ps3_card_info* FUNC2 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_ps3_card_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_ps3_card_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_ps3_card_info*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct snd_pcm_substream *substream,
			       int cmd)
{
	struct snd_ps3_card_info *card = FUNC2(substream);

	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
		/* clear outstanding interrupts  */
		FUNC9(PS3_AUDIO_AX_IS, 0);

		FUNC6(&card->dma_lock);
		{
			card->running = 1;
		}
		FUNC7(&card->dma_lock);

		FUNC4(card,
				    SND_PS3_DMA_FILLTYPE_SILENT_FIRSTFILL);
		FUNC3(card);
		while (FUNC1(FUNC0(7)) &
		       PS3_AUDIO_KICK_STATUS_MASK) {
			FUNC8(1);
		}
		FUNC4(card, SND_PS3_DMA_FILLTYPE_SILENT_RUNNING);
		FUNC3(card);
		break;

	case SNDRV_PCM_TRIGGER_STOP:
		FUNC6(&card->dma_lock);
		{
			card->running = 0;
		}
		FUNC7(&card->dma_lock);
		FUNC5(card);
		break;
	default:
		break;

	}

	return 0;
}