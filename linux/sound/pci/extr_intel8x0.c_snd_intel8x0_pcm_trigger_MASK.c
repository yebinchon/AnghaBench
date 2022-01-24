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
struct intel8x0 {int dummy; } ;
struct ichdev {unsigned long reg_offset; int suspended; scalar_t__ roff_sr; int /*<<< orphan*/  position; int /*<<< orphan*/  last_pos; } ;

/* Variables and functions */
 int EINVAL ; 
 int ICH_DCH ; 
 unsigned char ICH_IOCE ; 
 scalar_t__ ICH_REG_OFF_CR ; 
 unsigned char ICH_RESETREGS ; 
 unsigned char ICH_STARTBM ; 
#define  SNDRV_PCM_TRIGGER_PAUSE_PUSH 133 
#define  SNDRV_PCM_TRIGGER_PAUSE_RELEASE 132 
#define  SNDRV_PCM_TRIGGER_RESUME 131 
#define  SNDRV_PCM_TRIGGER_START 130 
#define  SNDRV_PCM_TRIGGER_STOP 129 
#define  SNDRV_PCM_TRIGGER_SUSPEND 128 
 struct ichdev* FUNC0 (struct snd_pcm_substream*) ; 
 int FUNC1 (struct intel8x0*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct intel8x0*,scalar_t__,unsigned char) ; 
 struct intel8x0* FUNC3 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream, int cmd)
{
	struct intel8x0 *chip = FUNC3(substream);
	struct ichdev *ichdev = FUNC0(substream);
	unsigned char val = 0;
	unsigned long port = ichdev->reg_offset;

	switch (cmd) {
	case SNDRV_PCM_TRIGGER_RESUME:
		ichdev->suspended = 0;
		/* fall through */
	case SNDRV_PCM_TRIGGER_START:
	case SNDRV_PCM_TRIGGER_PAUSE_RELEASE:
		val = ICH_IOCE | ICH_STARTBM;
		ichdev->last_pos = ichdev->position;
		break;
	case SNDRV_PCM_TRIGGER_SUSPEND:
		ichdev->suspended = 1;
		/* fall through */
	case SNDRV_PCM_TRIGGER_STOP:
		val = 0;
		break;
	case SNDRV_PCM_TRIGGER_PAUSE_PUSH:
		val = ICH_IOCE;
		break;
	default:
		return -EINVAL;
	}
	FUNC2(chip, port + ICH_REG_OFF_CR, val);
	if (cmd == SNDRV_PCM_TRIGGER_STOP) {
		/* wait until DMA stopped */
		while (!(FUNC1(chip, port + ichdev->roff_sr) & ICH_DCH)) ;
		/* reset whole DMA things */
		FUNC2(chip, port + ICH_REG_OFF_CR, ICH_RESETREGS);
	}
	return 0;
}