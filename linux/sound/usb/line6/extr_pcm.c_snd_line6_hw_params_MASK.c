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
struct snd_pcm_hw_params {int dummy; } ;
struct snd_line6_pcm {int /*<<< orphan*/  state_mutex; } ;
struct line6_pcm_stream {int /*<<< orphan*/  period; } ;

/* Variables and functions */
 int /*<<< orphan*/  LINE6_STREAM_PCM ; 
 struct line6_pcm_stream* FUNC0 (struct snd_line6_pcm*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct snd_line6_pcm*,struct line6_pcm_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_line6_pcm*,struct line6_pcm_stream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_pcm_hw_params*) ; 
 int FUNC7 (struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 
 struct snd_line6_pcm* FUNC8 (struct snd_pcm_substream*) ; 

int FUNC9(struct snd_pcm_substream *substream,
			struct snd_pcm_hw_params *hw_params)
{
	int ret;
	struct snd_line6_pcm *line6pcm = FUNC8(substream);
	struct line6_pcm_stream *pstr = FUNC0(line6pcm, substream->stream);

	FUNC3(&line6pcm->state_mutex);
	ret = FUNC1(line6pcm, pstr, substream->stream,
	                           LINE6_STREAM_PCM);
	if (ret < 0)
		goto error;

	ret = FUNC7(substream,
				       FUNC5(hw_params));
	if (ret < 0) {
		FUNC2(line6pcm, pstr, LINE6_STREAM_PCM);
		goto error;
	}

	pstr->period = FUNC6(hw_params);
 error:
	FUNC4(&line6pcm->state_mutex);
	return ret;
}