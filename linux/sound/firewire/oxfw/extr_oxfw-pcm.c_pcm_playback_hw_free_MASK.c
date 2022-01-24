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
struct snd_pcm_substream {TYPE_2__* runtime; struct snd_oxfw* private_data; } ;
struct snd_oxfw {int /*<<< orphan*/  mutex; int /*<<< orphan*/  substreams_count; } ;
struct TYPE_4__ {TYPE_1__* status; } ;
struct TYPE_3__ {scalar_t__ state; } ;

/* Variables and functions */
 scalar_t__ SNDRV_PCM_STATE_OPEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_oxfw*) ; 
 int FUNC3 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream)
{
	struct snd_oxfw *oxfw = substream->private_data;

	FUNC0(&oxfw->mutex);

	if (substream->runtime->status->state != SNDRV_PCM_STATE_OPEN)
		--oxfw->substreams_count;

	FUNC2(oxfw);

	FUNC1(&oxfw->mutex);

	return FUNC3(substream);
}