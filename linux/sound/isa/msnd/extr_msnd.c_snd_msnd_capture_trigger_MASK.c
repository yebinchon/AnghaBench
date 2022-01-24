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
struct snd_pcm_substream {int dummy; } ;
struct snd_msnd {int last_recbank; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  F_READING ; 
 int /*<<< orphan*/  HDEX_RECORD_START ; 
 int /*<<< orphan*/  HDEX_RECORD_STOP ; 
 int SNDRV_PCM_TRIGGER_START ; 
 int SNDRV_PCM_TRIGGER_STOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct snd_msnd*,int /*<<< orphan*/ ) ; 
 struct snd_msnd* FUNC3 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream,
				    int cmd)
{
	struct snd_msnd *chip = FUNC3(substream);

	if (cmd == SNDRV_PCM_TRIGGER_START) {
		chip->last_recbank = -1;
		FUNC1(F_READING, &chip->flags);
		if (FUNC2(chip, HDEX_RECORD_START) == 0)
			return 0;

		FUNC0(F_READING, &chip->flags);
	} else if (cmd == SNDRV_PCM_TRIGGER_STOP) {
		FUNC0(F_READING, &chip->flags);
		FUNC2(chip, HDEX_RECORD_STOP);
		return 0;
	}
	return -EINVAL;
}