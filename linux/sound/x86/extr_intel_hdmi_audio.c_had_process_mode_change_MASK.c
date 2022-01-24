#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct snd_intelhad {int /*<<< orphan*/  link_rate; scalar_t__ dp_output; int /*<<< orphan*/  dev; int /*<<< orphan*/  tmds_clock_speed; } ;
struct TYPE_2__ {int /*<<< orphan*/  rate; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_intelhad*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct snd_intelhad*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct snd_intelhad*) ; 
 struct snd_pcm_substream* FUNC4 (struct snd_intelhad*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_intelhad*) ; 

__attribute__((used)) static int FUNC6(struct snd_intelhad *intelhaddata)
{
	struct snd_pcm_substream *substream;
	int retval = 0;
	u32 disp_samp_freq, n_param;
	u32 link_rate = 0;

	substream = FUNC4(intelhaddata);
	if (!substream)
		return 0;

	/* Disable Audio */
	FUNC1(intelhaddata, false);

	/* Update CTS value */
	disp_samp_freq = intelhaddata->tmds_clock_speed;

	retval = FUNC3(substream->runtime->rate, &n_param, intelhaddata);
	if (retval) {
		FUNC0(intelhaddata->dev,
			"programming N value failed %#x\n", retval);
		goto out;
	}

	if (intelhaddata->dp_output)
		link_rate = intelhaddata->link_rate;

	FUNC2(substream->runtime->rate, disp_samp_freq, link_rate,
		     n_param, intelhaddata);

	/* Enable Audio */
	FUNC1(intelhaddata, true);

out:
	FUNC5(intelhaddata);
	return retval;
}