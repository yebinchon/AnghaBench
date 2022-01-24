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
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct TYPE_4__ {scalar_t__ trigger; } ;
struct snd_pcm_runtime {TYPE_2__ oss; TYPE_1__* status; int /*<<< orphan*/  sleep; } ;
struct snd_pcm_oss_file {struct snd_pcm_substream** streams; } ;
struct file {struct snd_pcm_oss_file* private_data; } ;
typedef  scalar_t__ snd_pcm_state_t ;
typedef  int /*<<< orphan*/  poll_table ;
typedef  int /*<<< orphan*/  ofile ;
typedef  int __poll_t ;
struct TYPE_3__ {scalar_t__ state; } ;

/* Variables and functions */
 int EPOLLIN ; 
 int EPOLLOUT ; 
 int EPOLLRDNORM ; 
 int EPOLLWRNORM ; 
 int /*<<< orphan*/  PCM_ENABLE_INPUT ; 
 scalar_t__ SNDRV_PCM_STATE_DRAINING ; 
 scalar_t__ SNDRV_PCM_STATE_RUNNING ; 
 size_t SNDRV_PCM_STREAM_CAPTURE ; 
 size_t SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC0 (struct snd_pcm_oss_file*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct snd_pcm_substream*) ; 
 scalar_t__ FUNC3 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pcm_oss_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_pcm_substream*) ; 

__attribute__((used)) static __poll_t FUNC7(struct file *file, poll_table * wait)
{
	struct snd_pcm_oss_file *pcm_oss_file;
	__poll_t mask;
	struct snd_pcm_substream *psubstream = NULL, *csubstream = NULL;
	
	pcm_oss_file = file->private_data;

	psubstream = pcm_oss_file->streams[SNDRV_PCM_STREAM_PLAYBACK];
	csubstream = pcm_oss_file->streams[SNDRV_PCM_STREAM_CAPTURE];

	mask = 0;
	if (psubstream != NULL) {
		struct snd_pcm_runtime *runtime = psubstream->runtime;
		FUNC1(file, &runtime->sleep, wait);
		FUNC5(psubstream);
		if (runtime->status->state != SNDRV_PCM_STATE_DRAINING &&
		    (runtime->status->state != SNDRV_PCM_STATE_RUNNING ||
		     FUNC3(psubstream)))
			mask |= EPOLLOUT | EPOLLWRNORM;
		FUNC6(psubstream);
	}
	if (csubstream != NULL) {
		struct snd_pcm_runtime *runtime = csubstream->runtime;
		snd_pcm_state_t ostate;
		FUNC1(file, &runtime->sleep, wait);
		FUNC5(csubstream);
		if ((ostate = runtime->status->state) != SNDRV_PCM_STATE_RUNNING ||
		    FUNC2(csubstream))
			mask |= EPOLLIN | EPOLLRDNORM;
		FUNC6(csubstream);
		if (ostate != SNDRV_PCM_STATE_RUNNING && runtime->oss.trigger) {
			struct snd_pcm_oss_file ofile;
			FUNC0(&ofile, 0, sizeof(ofile));
			ofile.streams[SNDRV_PCM_STREAM_CAPTURE] = pcm_oss_file->streams[SNDRV_PCM_STREAM_CAPTURE];
			runtime->oss.trigger = 0;
			FUNC4(&ofile, PCM_ENABLE_INPUT);
		}
	}

	return mask;
}