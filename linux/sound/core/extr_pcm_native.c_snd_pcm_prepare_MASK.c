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
struct snd_pcm_substream {int f_flags; TYPE_2__* runtime; } ;
struct file {int f_flags; } ;
struct TYPE_4__ {TYPE_1__* status; } ;
struct TYPE_3__ {int state; } ;

/* Variables and functions */
#define  SNDRV_PCM_STATE_PAUSED 129 
 int /*<<< orphan*/  SNDRV_PCM_STATE_SETUP ; 
#define  SNDRV_PCM_STATE_SUSPENDED 128 
 int FUNC0 (int /*<<< orphan*/ *,struct snd_pcm_substream*,int) ; 
 int /*<<< orphan*/  snd_pcm_action_prepare ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream,
			   struct file *file)
{
	int f_flags;

	if (file)
		f_flags = file->f_flags;
	else
		f_flags = substream->f_flags;

	FUNC3(substream);
	switch (substream->runtime->status->state) {
	case SNDRV_PCM_STATE_PAUSED:
		FUNC1(substream, 0);
		/* fallthru */
	case SNDRV_PCM_STATE_SUSPENDED:
		FUNC2(substream, SNDRV_PCM_STATE_SETUP);
		break;
	}
	FUNC4(substream);

	return FUNC0(&snd_pcm_action_prepare,
					substream, f_flags);
}