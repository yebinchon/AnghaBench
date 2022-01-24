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
struct snd_sb {int /*<<< orphan*/  mixer_lock; int /*<<< orphan*/  mode; } ;
struct snd_pcm_substream {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALS4K_CR1E_FIFO2_CONTROL ; 
 int EINVAL ; 
 int /*<<< orphan*/  SB_RATE_LOCK_CAPTURE ; 
#define  SNDRV_PCM_TRIGGER_RESUME 131 
#define  SNDRV_PCM_TRIGGER_START 130 
#define  SNDRV_PCM_TRIGGER_STOP 129 
#define  SNDRV_PCM_TRIGGER_SUSPEND 128 
 int /*<<< orphan*/  FUNC0 (struct snd_sb*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_sb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct snd_sb* FUNC2 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream, int cmd)
{
	struct snd_sb *chip = FUNC2(substream);
	int result = 0;
	
	/* FIXME race condition in here!!!
	   chip->mode non-atomic update gets consistently protected
	   by reg_lock always, _except_ for this place!!
	   Probably need to take reg_lock as outer (or inner??) lock, too.
	   (or serialize both lock operations? probably not, though... - racy?)
	*/
	FUNC3(&chip->mixer_lock);
	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
	case SNDRV_PCM_TRIGGER_RESUME:
		chip->mode |= SB_RATE_LOCK_CAPTURE;
		FUNC1(chip, ALS4K_CR1E_FIFO2_CONTROL,
							 FUNC0(chip));
		break;
	case SNDRV_PCM_TRIGGER_STOP:
	case SNDRV_PCM_TRIGGER_SUSPEND:
		chip->mode &= ~SB_RATE_LOCK_CAPTURE;
		FUNC1(chip, ALS4K_CR1E_FIFO2_CONTROL,
							 FUNC0(chip));
		break;
	default:
		result = -EINVAL;
		break;
	}
	FUNC4(&chip->mixer_lock);
	return result;
}