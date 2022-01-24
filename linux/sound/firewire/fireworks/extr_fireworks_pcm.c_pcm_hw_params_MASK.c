#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_substream {TYPE_2__* runtime; struct snd_efw* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_efw {int /*<<< orphan*/  mutex; int /*<<< orphan*/  substreams_counter; } ;
struct TYPE_4__ {TYPE_1__* status; } ;
struct TYPE_3__ {scalar_t__ state; } ;

/* Variables and functions */
 scalar_t__ SNDRV_PCM_STATE_OPEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_hw_params*) ; 
 unsigned int FUNC3 (struct snd_pcm_hw_params*) ; 
 int FUNC4 (struct snd_efw*,unsigned int) ; 
 int FUNC5 (struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct snd_pcm_substream *substream,
				 struct snd_pcm_hw_params *hw_params)
{
	struct snd_efw *efw = substream->private_data;
	int err;

	err = FUNC5(substream,
					       FUNC2(hw_params));
	if (err < 0)
		return err;

	if (substream->runtime->status->state == SNDRV_PCM_STATE_OPEN) {
		unsigned int rate = FUNC3(hw_params);

		FUNC0(&efw->mutex);
		err = FUNC4(efw, rate);
		if (err >= 0)
			++efw->substreams_counter;
		FUNC1(&efw->mutex);
	}

	return err;
}