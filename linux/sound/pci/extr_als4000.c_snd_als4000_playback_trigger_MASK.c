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
struct snd_sb {int /*<<< orphan*/  reg_lock; int /*<<< orphan*/  mode; } ;
struct snd_pcm_substream {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dma_off; int /*<<< orphan*/  dma_on; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SB_RATE_LOCK_PLAYBACK ; 
#define  SNDRV_PCM_TRIGGER_RESUME 131 
#define  SNDRV_PCM_TRIGGER_START 130 
#define  SNDRV_PCM_TRIGGER_STOP 129 
#define  SNDRV_PCM_TRIGGER_SUSPEND 128 
 TYPE_1__ FUNC0 (struct snd_sb*) ; 
 struct snd_sb* FUNC1 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_sb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream, int cmd)
{
	struct snd_sb *chip = FUNC1(substream);
	int result = 0;

	FUNC3(&chip->reg_lock);
	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
	case SNDRV_PCM_TRIGGER_RESUME:
		chip->mode |= SB_RATE_LOCK_PLAYBACK;
		FUNC2(chip, FUNC0(chip).dma_on);
		break;
	case SNDRV_PCM_TRIGGER_STOP:
	case SNDRV_PCM_TRIGGER_SUSPEND:
		FUNC2(chip, FUNC0(chip).dma_off);
		chip->mode &= ~SB_RATE_LOCK_PLAYBACK;
		break;
	default:
		result = -EINVAL;
		break;
	}
	FUNC4(&chip->reg_lock);
	return result;
}