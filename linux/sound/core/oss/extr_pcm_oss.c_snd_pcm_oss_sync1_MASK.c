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
typedef  int /*<<< orphan*/  wait_queue_entry_t ;
struct snd_pcm_substream {int /*<<< orphan*/  pcm; struct snd_pcm_runtime* runtime; } ;
struct TYPE_3__ {scalar_t__ buffer_used; int /*<<< orphan*/  buffer; } ;
struct snd_pcm_runtime {int /*<<< orphan*/  sleep; TYPE_2__* status; TYPE_1__ oss; } ;
typedef  int ssize_t ;
typedef  scalar_t__ snd_pcm_state_t ;
struct TYPE_4__ {scalar_t__ state; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EIO ; 
 int ERESTARTSYS ; 
 int HZ ; 
 scalar_t__ SNDRV_PCM_STATE_RUNNING ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 long FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct snd_pcm_substream*,int /*<<< orphan*/ ,size_t,int) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC10 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC11(struct snd_pcm_substream *substream, size_t size)
{
	struct snd_pcm_runtime *runtime;
	ssize_t result = 0;
	snd_pcm_state_t state;
	long res;
	wait_queue_entry_t wait;

	runtime = substream->runtime;
	FUNC1(&wait, current);
	FUNC0(&runtime->sleep, &wait);
#ifdef OSS_DEBUG
	pcm_dbg(substream->pcm, "sync1: size = %li\n", size);
#endif
	while (1) {
		result = FUNC8(substream, runtime->oss.buffer, size, 1);
		if (result > 0) {
			runtime->oss.buffer_used = 0;
			result = 0;
			break;
		}
		if (result != 0 && result != -EAGAIN)
			break;
		result = 0;
		FUNC6(TASK_INTERRUPTIBLE);
		FUNC9(substream);
		state = runtime->status->state;
		FUNC10(substream);
		if (state != SNDRV_PCM_STATE_RUNNING) {
			FUNC6(TASK_RUNNING);
			break;
		}
		res = FUNC5(10 * HZ);
		if (FUNC7(current)) {
			result = -ERESTARTSYS;
			break;
		}
		if (res == 0) {
			FUNC3(substream->pcm,
				"OSS sync error - DMA timeout\n");
			result = -EIO;
			break;
		}
	}
	FUNC4(&runtime->sleep, &wait);
	return result;
}