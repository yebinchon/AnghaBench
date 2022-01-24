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
struct snd_line6_pcm {int /*<<< orphan*/  state_mutex; } ;
struct line6_pcm_stream {int /*<<< orphan*/  running; } ;

/* Variables and functions */
 struct line6_pcm_stream* FUNC0 (struct snd_line6_pcm*,int) ; 
 int FUNC1 (struct snd_line6_pcm*,struct line6_pcm_stream*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_line6_pcm*,int) ; 
 int FUNC3 (struct snd_line6_pcm*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_line6_pcm*,struct line6_pcm_stream*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct snd_line6_pcm *line6pcm, int type, bool start)
{
	struct line6_pcm_stream *pstr;
	int ret = 0, dir;

	/* TODO: We should assert SNDRV_PCM_STREAM_PLAYBACK/CAPTURE == 0/1 */
	FUNC5(&line6pcm->state_mutex);
	for (dir = 0; dir < 2; dir++) {
		pstr = FUNC0(line6pcm, dir);
		ret = FUNC1(line6pcm, pstr, dir, type);
		if (ret < 0)
			goto error;
		if (!pstr->running)
			FUNC4(line6pcm, pstr);
	}
	if (start) {
		for (dir = 0; dir < 2; dir++) {
			ret = FUNC3(line6pcm, dir, type);
			if (ret < 0)
				goto error;
		}
	}
 error:
	FUNC6(&line6pcm->state_mutex);
	if (ret < 0)
		FUNC2(line6pcm, type);
	return ret;
}