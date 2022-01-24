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
struct aw2_pcm_device {int /*<<< orphan*/  stream_number; struct aw2* chip; } ;
struct aw2 {int /*<<< orphan*/  reg_lock; int /*<<< orphan*/  saa7146; } ;

/* Variables and functions */
 int EINVAL ; 
#define  SNDRV_PCM_TRIGGER_START 129 
#define  SNDRV_PCM_TRIGGER_STOP 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct aw2_pcm_device* FUNC2 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream,
				       int cmd)
{
	int status = 0;
	struct aw2_pcm_device *pcm_device = FUNC2(substream);
	struct aw2 *chip = pcm_device->chip;
	FUNC3(&chip->reg_lock);
	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
		FUNC0(&chip->saa7146,
							  pcm_device->
							  stream_number);
		break;
	case SNDRV_PCM_TRIGGER_STOP:
		FUNC1(&chip->saa7146,
							 pcm_device->
							 stream_number);
		break;
	default:
		status = -EINVAL;
	}
	FUNC4(&chip->reg_lock);
	return status;
}