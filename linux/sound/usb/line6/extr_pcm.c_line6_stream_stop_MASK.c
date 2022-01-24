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
struct snd_line6_pcm {scalar_t__ prev_fsize; int /*<<< orphan*/ * prev_fbuf; } ;
struct line6_pcm_stream {int /*<<< orphan*/  lock; int /*<<< orphan*/  running; } ;

/* Variables and functions */
 int SNDRV_PCM_STREAM_CAPTURE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 struct line6_pcm_stream* FUNC1 (struct snd_line6_pcm*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_line6_pcm*,struct line6_pcm_stream*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct snd_line6_pcm *line6pcm, int direction,
			  int type)
{
	unsigned long flags;
	struct line6_pcm_stream *pstr = FUNC1(line6pcm, direction);

	FUNC3(&pstr->lock, flags);
	FUNC0(type, &pstr->running);
	if (!pstr->running) {
		FUNC4(&pstr->lock, flags);
		FUNC2(line6pcm, pstr);
		FUNC3(&pstr->lock, flags);
		if (direction == SNDRV_PCM_STREAM_CAPTURE) {
			line6pcm->prev_fbuf = NULL;
			line6pcm->prev_fsize = 0;
		}
	}
	FUNC4(&pstr->lock, flags);
}