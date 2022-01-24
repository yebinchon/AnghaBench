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
struct snd_pcm_substream {int dummy; } ;
struct TYPE_2__ {unsigned int ctl; } ;
struct snd_cs46xx {int /*<<< orphan*/  reg_lock; TYPE_1__ capt; } ;

/* Variables and functions */
 int /*<<< orphan*/  BA1_CCTL ; 
 int EINVAL ; 
#define  SNDRV_PCM_TRIGGER_RESUME 131 
#define  SNDRV_PCM_TRIGGER_START 130 
#define  SNDRV_PCM_TRIGGER_STOP 129 
#define  SNDRV_PCM_TRIGGER_SUSPEND 128 
 unsigned int FUNC0 (struct snd_cs46xx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_cs46xx*,int /*<<< orphan*/ ,unsigned int) ; 
 struct snd_cs46xx* FUNC2 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream,
				      int cmd)
{
	struct snd_cs46xx *chip = FUNC2(substream);
	unsigned int tmp;
	int result = 0;

	FUNC3(&chip->reg_lock);
	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
	case SNDRV_PCM_TRIGGER_RESUME:
		tmp = FUNC0(chip, BA1_CCTL);
		tmp &= 0xffff0000;
		FUNC1(chip, BA1_CCTL, chip->capt.ctl | tmp);
		break;
	case SNDRV_PCM_TRIGGER_STOP:
	case SNDRV_PCM_TRIGGER_SUSPEND:
		tmp = FUNC0(chip, BA1_CCTL);
		tmp &= 0xffff0000;
		FUNC1(chip, BA1_CCTL, tmp);
		break;
	default:
		result = -EINVAL;
		break;
	}
	FUNC4(&chip->reg_lock);

	return result;
}