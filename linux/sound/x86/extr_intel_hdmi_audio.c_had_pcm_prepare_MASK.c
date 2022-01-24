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
typedef  int /*<<< orphan*/  u32 ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int periods; int rate; int channels; int /*<<< orphan*/  period_size; } ;
struct snd_intelhad {int /*<<< orphan*/  link_rate; scalar_t__ dp_output; int /*<<< orphan*/  dev; int /*<<< orphan*/  tmds_clock_speed; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUD_BUF_CH_SWAP ; 
 int /*<<< orphan*/  SWAP_LFE_CENTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC2 (struct snd_pcm_runtime*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_intelhad*) ; 
 int FUNC4 (struct snd_pcm_substream*,struct snd_intelhad*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_pcm_substream*,struct snd_intelhad*) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct snd_intelhad*) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_pcm_substream*,struct snd_intelhad*) ; 
 int FUNC8 (int,int /*<<< orphan*/ *,struct snd_intelhad*) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_intelhad*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct snd_pcm_substream*) ; 
 struct snd_intelhad* FUNC11 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC12(struct snd_pcm_substream *substream)
{
	int retval;
	u32 disp_samp_freq, n_param;
	u32 link_rate = 0;
	struct snd_intelhad *intelhaddata;
	struct snd_pcm_runtime *runtime;

	intelhaddata = FUNC11(substream);
	runtime = substream->runtime;

	FUNC0(intelhaddata->dev, "period_size=%d\n",
		(int)FUNC2(runtime, runtime->period_size));
	FUNC0(intelhaddata->dev, "periods=%d\n", runtime->periods);
	FUNC0(intelhaddata->dev, "buffer_size=%d\n",
		(int)FUNC10(substream));
	FUNC0(intelhaddata->dev, "rate=%d\n", runtime->rate);
	FUNC0(intelhaddata->dev, "channels=%d\n", runtime->channels);

	FUNC3(intelhaddata);

	/* Get N value in KHz */
	disp_samp_freq = intelhaddata->tmds_clock_speed;

	retval = FUNC8(substream->runtime->rate, &n_param, intelhaddata);
	if (retval) {
		FUNC1(intelhaddata->dev,
			"programming N value failed %#x\n", retval);
		goto prep_end;
	}

	if (intelhaddata->dp_output)
		link_rate = intelhaddata->link_rate;

	FUNC6(substream->runtime->rate, disp_samp_freq, link_rate,
		     n_param, intelhaddata);

	FUNC7(substream, intelhaddata);

	retval = FUNC4(substream, intelhaddata);

	/* Prog buffer address */
	FUNC5(substream, intelhaddata);

	/*
	 * Program channel mapping in following order:
	 * FL, FR, C, LFE, RL, RR
	 */

	FUNC9(intelhaddata, AUD_BUF_CH_SWAP, SWAP_LFE_CENTER);

prep_end:
	return retval;
}