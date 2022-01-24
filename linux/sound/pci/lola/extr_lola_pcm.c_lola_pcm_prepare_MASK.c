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
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int channels; int /*<<< orphan*/  rate; } ;
struct lola_stream {scalar_t__ index; int opened; unsigned int bufsize; unsigned int period_bytes; unsigned int format_verb; struct lola_stream* master; } ;
struct lola_pcm {scalar_t__ num_streams; } ;
struct lola {int /*<<< orphan*/  sample_rate; int /*<<< orphan*/  open_mutex; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct lola_pcm*,struct lola_stream*) ; 
 unsigned int FUNC1 (struct snd_pcm_substream*) ; 
 struct lola_pcm* FUNC2 (struct snd_pcm_substream*) ; 
 struct lola_stream* FUNC3 (struct snd_pcm_substream*) ; 
 int FUNC4 (struct lola*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct lola*,struct lola_stream*,int) ; 
 int FUNC6 (struct lola*,struct lola_pcm*,struct lola_stream*) ; 
 int FUNC7 (struct lola*,struct lola_pcm*,struct snd_pcm_substream*,struct lola_stream*) ; 
 int /*<<< orphan*/  FUNC8 (struct lola*,struct lola_stream*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC11 (struct snd_pcm_substream*) ; 
 unsigned int FUNC12 (struct snd_pcm_substream*) ; 
 struct lola* FUNC13 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC14(struct snd_pcm_substream *substream)
{
	struct lola *chip = FUNC13(substream);
	struct lola_pcm *pcm = FUNC2(substream);
	struct lola_stream *str = FUNC3(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	unsigned int bufsize, period_bytes, format_verb;
	int i, err;

	FUNC9(&chip->open_mutex);
	FUNC8(chip, str);
	FUNC0(pcm, str);
	if (str->index + runtime->channels > pcm->num_streams) {
		FUNC10(&chip->open_mutex);
		return -EINVAL;
	}
	for (i = 1; i < runtime->channels; i++) {
		str[i].master = str;
		str[i].opened = 1;
	}
	FUNC10(&chip->open_mutex);

	bufsize = FUNC11(substream);
	period_bytes = FUNC12(substream);
	format_verb = FUNC1(substream);

	str->bufsize = bufsize;
	str->period_bytes = period_bytes;
	str->format_verb = format_verb;

	err = FUNC7(chip, pcm, substream, str);
	if (err < 0)
		return err;

	err = FUNC4(chip, runtime->rate);
	if (err < 0)
		return err;
	chip->sample_rate = runtime->rate;	/* sample rate gets locked */

	err = FUNC5(chip, str, runtime->channels);
	if (err < 0)
		return err;

	err = FUNC6(chip, pcm, str);
	if (err < 0) {
		FUNC8(chip, str);
		return err;
	}

	return 0;
}