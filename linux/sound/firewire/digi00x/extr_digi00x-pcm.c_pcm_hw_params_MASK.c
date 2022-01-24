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
struct snd_pcm_substream {TYPE_2__* runtime; struct snd_dg00x* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_dg00x {int /*<<< orphan*/  mutex; int /*<<< orphan*/  substreams_counter; } ;
struct TYPE_4__ {TYPE_1__* status; } ;
struct TYPE_3__ {scalar_t__ state; } ;

/* Variables and functions */
 scalar_t__ SNDRV_PCM_STATE_OPEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_hw_params*) ; 
 unsigned int FUNC3 (struct snd_pcm_hw_params*) ; 
 int FUNC4 (struct snd_dg00x*,unsigned int) ; 
 int FUNC5 (struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct snd_pcm_substream *substream,
			 struct snd_pcm_hw_params *hw_params)
{
	struct snd_dg00x *dg00x = substream->private_data;
	int err;

	err = FUNC5(substream,
					       FUNC2(hw_params));
	if (err < 0)
		return err;

	if (substream->runtime->status->state == SNDRV_PCM_STATE_OPEN) {
		unsigned int rate = FUNC3(hw_params);

		FUNC0(&dg00x->mutex);
		err = FUNC4(dg00x, rate);
		if (err >= 0)
			++dg00x->substreams_counter;
		FUNC1(&dg00x->mutex);
	}

	return err;
}