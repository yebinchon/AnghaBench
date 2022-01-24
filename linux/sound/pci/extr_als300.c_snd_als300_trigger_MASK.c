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
typedef  int u32 ;
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct snd_als300_substream_data {unsigned short control_register; int period_flipflop; } ;
struct snd_als300 {int /*<<< orphan*/  reg_lock; int /*<<< orphan*/  port; } ;
struct TYPE_2__ {struct snd_als300_substream_data* private_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int FIFO_PAUSE ; 
#define  SNDRV_PCM_TRIGGER_PAUSE_PUSH 133 
#define  SNDRV_PCM_TRIGGER_PAUSE_RELEASE 132 
#define  SNDRV_PCM_TRIGGER_RESUME 131 
#define  SNDRV_PCM_TRIGGER_START 130 
#define  SNDRV_PCM_TRIGGER_STOP 129 
#define  SNDRV_PCM_TRIGGER_SUSPEND 128 
 int TRANSFER_START ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned short) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned short,int) ; 
 struct snd_als300* FUNC3 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct snd_pcm_substream *substream, int cmd)
{
	struct snd_als300 *chip = FUNC3(substream);
	u32 tmp;
	struct snd_als300_substream_data *data;
	unsigned short reg;
	int ret = 0;

	data = substream->runtime->private_data;
	reg = data->control_register;

	FUNC4(&chip->reg_lock);
	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
	case SNDRV_PCM_TRIGGER_RESUME:
		tmp = FUNC1(chip->port, reg);
		data->period_flipflop = 1;
		FUNC2(chip->port, reg, tmp | TRANSFER_START);
		FUNC0("TRIGGER START\n");
		break;
	case SNDRV_PCM_TRIGGER_STOP:
	case SNDRV_PCM_TRIGGER_SUSPEND:
		tmp = FUNC1(chip->port, reg);
		FUNC2(chip->port, reg, tmp & ~TRANSFER_START);
		FUNC0("TRIGGER STOP\n");
		break;
	case SNDRV_PCM_TRIGGER_PAUSE_PUSH:
		tmp = FUNC1(chip->port, reg);
		FUNC2(chip->port, reg, tmp | FIFO_PAUSE);
		FUNC0("TRIGGER PAUSE\n");
		break;
	case SNDRV_PCM_TRIGGER_PAUSE_RELEASE:
		tmp = FUNC1(chip->port, reg);
		FUNC2(chip->port, reg, tmp & ~FIFO_PAUSE);
		FUNC0("TRIGGER RELEASE\n");
		break;
	default:
		FUNC0("TRIGGER INVALID\n");
		ret = -EINVAL;
	}
	FUNC5(&chip->reg_lock);
	return ret;
}