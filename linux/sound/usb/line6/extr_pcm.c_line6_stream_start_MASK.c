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
struct snd_line6_pcm {int dummy; } ;
struct line6_pcm_stream {int /*<<< orphan*/  lock; int /*<<< orphan*/  running; scalar_t__ count; scalar_t__ unlink_urbs; scalar_t__ active_urbs; } ;

/* Variables and functions */
 int SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 struct line6_pcm_stream* FUNC1 (struct snd_line6_pcm*,int) ; 
 int FUNC2 (struct snd_line6_pcm*) ; 
 int FUNC3 (struct snd_line6_pcm*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct snd_line6_pcm *line6pcm, int direction,
			      int type)
{
	unsigned long flags;
	struct line6_pcm_stream *pstr = FUNC1(line6pcm, direction);
	int ret = 0;

	FUNC4(&pstr->lock, flags);
	if (!FUNC6(type, &pstr->running) &&
	    !(pstr->active_urbs || pstr->unlink_urbs)) {
		pstr->count = 0;
		/* Submit all currently available URBs */
		if (direction == SNDRV_PCM_STREAM_PLAYBACK)
			ret = FUNC3(line6pcm);
		else
			ret = FUNC2(line6pcm);
	}

	if (ret < 0)
		FUNC0(type, &pstr->running);
	FUNC5(&pstr->lock, flags);
	return ret;
}