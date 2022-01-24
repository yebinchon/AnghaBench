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
struct snd_pcm_substream {int /*<<< orphan*/  stream; } ;
struct snd_line6_pcm {int /*<<< orphan*/  state_mutex; } ;
struct line6_pcm_stream {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LINE6_STREAM_PCM ; 
 struct line6_pcm_stream* FUNC0 (struct snd_line6_pcm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_line6_pcm*,struct line6_pcm_stream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct snd_pcm_substream*) ; 
 struct snd_line6_pcm* FUNC5 (struct snd_pcm_substream*) ; 

int FUNC6(struct snd_pcm_substream *substream)
{
	struct snd_line6_pcm *line6pcm = FUNC5(substream);
	struct line6_pcm_stream *pstr = FUNC0(line6pcm, substream->stream);

	FUNC2(&line6pcm->state_mutex);
	FUNC1(line6pcm, pstr, LINE6_STREAM_PCM);
	FUNC3(&line6pcm->state_mutex);
	return FUNC4(substream);
}