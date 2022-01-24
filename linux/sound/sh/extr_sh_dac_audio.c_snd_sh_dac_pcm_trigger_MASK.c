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
struct snd_sh_dac {int empty; int /*<<< orphan*/  processed; int /*<<< orphan*/  data_buffer; int /*<<< orphan*/  buffer_end; int /*<<< orphan*/  buffer_begin; } ;
struct snd_pcm_substream {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  SNDRV_PCM_TRIGGER_START 129 
#define  SNDRV_PCM_TRIGGER_STOP 128 
 int /*<<< orphan*/  FUNC0 (struct snd_sh_dac*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_sh_dac*) ; 
 struct snd_sh_dac* FUNC2 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *substream, int cmd)
{
	struct snd_sh_dac *chip = FUNC2(substream);

	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
		FUNC0(chip);
		break;
	case SNDRV_PCM_TRIGGER_STOP:
		chip->buffer_begin = chip->buffer_end = chip->data_buffer;
		chip->processed = 0;
		chip->empty = 1;
		FUNC1(chip);
		break;
	default:
		 return -EINVAL;
	}

	return 0;
}