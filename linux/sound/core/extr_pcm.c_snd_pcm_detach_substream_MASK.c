#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_substream {TYPE_3__* pstr; int /*<<< orphan*/ * pid; TYPE_2__* timer; struct snd_pcm_runtime* runtime; } ;
struct TYPE_4__ {struct snd_pcm_runtime* rules; } ;
struct snd_pcm_runtime {TYPE_1__ hw_constraints; int /*<<< orphan*/  control; int /*<<< orphan*/  status; int /*<<< orphan*/  (* private_free ) (struct snd_pcm_runtime*) ;} ;
struct snd_pcm_mmap_status {int dummy; } ;
struct snd_pcm_mmap_control {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  substream_opened; } ;
struct TYPE_5__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_runtime*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_pcm_runtime*) ; 

void FUNC8(struct snd_pcm_substream *substream)
{
	struct snd_pcm_runtime *runtime;

	if (FUNC1(substream))
		return;
	runtime = substream->runtime;
	if (runtime->private_free != NULL)
		runtime->private_free(runtime);
	FUNC2(runtime->status,
		       FUNC0(sizeof(struct snd_pcm_mmap_status)));
	FUNC2(runtime->control,
		       FUNC0(sizeof(struct snd_pcm_mmap_control)));
	FUNC3(runtime->hw_constraints.rules);
	/* Avoid concurrent access to runtime via PCM timer interface */
	if (substream->timer)
		FUNC5(&substream->timer->lock);
	substream->runtime = NULL;
	if (substream->timer)
		FUNC6(&substream->timer->lock);
	FUNC3(runtime);
	FUNC4(substream->pid);
	substream->pid = NULL;
	substream->pstr->substream_opened--;
}