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
struct pcm_substream {int active; int /*<<< orphan*/  lock; int /*<<< orphan*/ * instance; } ;
struct pcm_runtime {int /*<<< orphan*/  stream_mutex; scalar_t__ panic; } ;

/* Variables and functions */
 struct pcm_substream* FUNC0 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC1 (struct pcm_runtime*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct pcm_runtime* FUNC4 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *alsa_sub)
{
	struct pcm_runtime *rt = FUNC4(alsa_sub);
	struct pcm_substream *sub = FUNC0(alsa_sub);
	unsigned long flags;

	if (rt->panic)
		return 0;

	FUNC2(&rt->stream_mutex);
	if (sub) {
		FUNC1(rt);

		/* deactivate substream */
		FUNC5(&sub->lock, flags);
		sub->instance = NULL;
		sub->active = false;
		FUNC6(&sub->lock, flags);

	}
	FUNC3(&rt->stream_mutex);
	return 0;
}