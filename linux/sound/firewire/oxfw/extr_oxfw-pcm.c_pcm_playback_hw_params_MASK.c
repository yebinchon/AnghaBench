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
struct snd_pcm_substream {TYPE_1__* runtime; struct snd_oxfw* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_oxfw {int /*<<< orphan*/  mutex; int /*<<< orphan*/  substreams_count; int /*<<< orphan*/  rx_stream; } ;
struct TYPE_4__ {scalar_t__ state; } ;
struct TYPE_3__ {TYPE_2__* status; } ;

/* Variables and functions */
 scalar_t__ SNDRV_PCM_STATE_OPEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_hw_params*) ; 
 unsigned int FUNC3 (struct snd_pcm_hw_params*) ; 
 unsigned int FUNC4 (struct snd_pcm_hw_params*) ; 
 int FUNC5 (struct snd_oxfw*,int /*<<< orphan*/ *,unsigned int,unsigned int) ; 
 int FUNC6 (struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *substream,
				  struct snd_pcm_hw_params *hw_params)
{
	struct snd_oxfw *oxfw = substream->private_data;
	int err;

	err = FUNC6(substream,
					       FUNC2(hw_params));
	if (err < 0)
		return err;

	if (substream->runtime->status->state == SNDRV_PCM_STATE_OPEN) {
		unsigned int rate = FUNC4(hw_params);
		unsigned int channels = FUNC3(hw_params);

		FUNC0(&oxfw->mutex);
		err = FUNC5(oxfw, &oxfw->rx_stream,
						     rate, channels);
		if (err >= 0)
			++oxfw->substreams_count;
		FUNC1(&oxfw->mutex);
	}

	return 0;
}