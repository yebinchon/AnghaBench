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
struct fm801 {int ply_ctrl; int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 int EINVAL ; 
 int FM801_BUF1_LAST ; 
 int FM801_BUF2_LAST ; 
 int FM801_IMMED_STOP ; 
 int FM801_PAUSE ; 
 int FM801_START ; 
 int /*<<< orphan*/  PLY_CTRL ; 
#define  SNDRV_PCM_TRIGGER_PAUSE_PUSH 133 
#define  SNDRV_PCM_TRIGGER_PAUSE_RELEASE 132 
#define  SNDRV_PCM_TRIGGER_RESUME 131 
#define  SNDRV_PCM_TRIGGER_START 130 
#define  SNDRV_PCM_TRIGGER_STOP 129 
#define  SNDRV_PCM_TRIGGER_SUSPEND 128 
 int /*<<< orphan*/  FUNC0 (struct fm801*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct fm801* FUNC2 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream,
				      int cmd)
{
	struct fm801 *chip = FUNC2(substream);

	FUNC3(&chip->reg_lock);
	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
		chip->ply_ctrl &= ~(FM801_BUF1_LAST |
				     FM801_BUF2_LAST |
				     FM801_PAUSE);
		chip->ply_ctrl |= FM801_START |
				   FM801_IMMED_STOP;
		break;
	case SNDRV_PCM_TRIGGER_STOP:
		chip->ply_ctrl &= ~(FM801_START | FM801_PAUSE);
		break;
	case SNDRV_PCM_TRIGGER_PAUSE_PUSH:
	case SNDRV_PCM_TRIGGER_SUSPEND:
		chip->ply_ctrl |= FM801_PAUSE;
		break;
	case SNDRV_PCM_TRIGGER_PAUSE_RELEASE:
	case SNDRV_PCM_TRIGGER_RESUME:
		chip->ply_ctrl &= ~FM801_PAUSE;
		break;
	default:
		FUNC4(&chip->reg_lock);
		FUNC1();
		return -EINVAL;
	}
	FUNC0(chip, PLY_CTRL, chip->ply_ctrl);
	FUNC4(&chip->reg_lock);
	return 0;
}